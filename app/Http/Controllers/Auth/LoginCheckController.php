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
                ->select('devices.*', 'users.name');

            if(!in_array('superadmin', $roles_name)){
                $query->where('device.id', auth()->user()->id);
            }


            $data_table_make = DataTables::make($query);
            return $data_table_make
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.device_access_check.view', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

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

                    if($current_device->logout == 1 && $current_device->suspend_date <= Carbon::now()){

                        $current_device->updater_id = auth()->user()->id ?? 0;
                        $current_device->last_activity = time();
                        $current_device->save();

                        auth()->logout();
                        $device_logout = 1;

                    }else{
                        $current_device->last_activity = time();
                        $current_device->save();
                    }
                    setcookie(   $cookieName, base64_encode($current_device->id * 16), time() + 3600, url('/'));



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

}
