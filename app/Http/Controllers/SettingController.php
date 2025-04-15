<?php

namespace App\Http\Controllers;
use  App\Http\Controllers\Auth\LoginCheckController;
use App\Models\setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Symfony\Component\Process\Exception\ProcessFailedException;
use Symfony\Component\Process\Process;
use Illuminate\Support\Facades\View;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function view_setting(Request $request, $view)
    {
        return view('admin.settings.settings_manual.' . $view);
    }










    public function index(Request $request, $page)
    {

        if($page != null ){
            $directive_create = 'admin.settings.' . $page;
            if(View::exists($directive_create)){
                return view($directive_create);

            }else{
                return abort('404');
            }
        }
        
  
        


        // return $settings;
        if($flag_target == 1){
            return view('admin.settings.index', compact('slug', 'settings', 'key'));
        }else{
            abort('404');
        }
    }






    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    public function type_check($key, $value, $id =null){
        $keywords = ['image', 'file', 'logo'];

        foreach ($keywords as $keyword) {
            if (str_contains($key, $keyword)) {
                // return $upload_id = uploads($value, $id);

                if($id !== null){
                    return $upload_id = uploads($value, $id);
                }else{
                    return $upload_id = uploads($value);
                }

            }
        }
        return $value;
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        

        $creator_id = auth()->user()->id ?? 0;
        if($request->has('multiple_settings')){
            $key_code = $request->key_code;
            foreach($request->multiple_settings as $key =>  $items){
                $setting_find = setting::where(['name'=> $key , 'key' =>   $key_code])->first();
                $setting_find->value = $items;
                $setting_find->save();
            }
            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'false',
            ]);
        }
       if($request->has('group')){
             $request = $request->except('group');

            foreach ($request as $key => $items) {
                $items_data = explode(':', $key);
                $setting = setting::where('name', $items_data[0])->where('key',  $items_data[1])->first();


                $submit_value = '';

                if( $setting){
                    $submit_value = $items;//$this->type_check($items_data[0],  $items,  $setting->value);

                    $setting->value =  $submit_value;

                }else{
                    $submit_value =  $items;//$this->type_check(  $items_data[0],  $items);

                    $setting = new setting;
                    $setting->name =  $items_data[0];
                    $setting->key =  $items_data[1];
                    $setting->value =   $submit_value;
                }

                $setting->creator_id = $creator_id;
                $setting->save();

            }

            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);


        }else{
             $setting = setting::where('name', $request->name)->where('key', $request->key)->first();

            $submit_value = '';

            if( $setting){
                $submit_value =    $request->value; //$this->type_check($setting->name,  $request->value,  $setting->value);
                $setting->value =  $submit_value;

            }else{
                $setting = new setting;
                $submit_value = $request->value; // $this->type_check(  $setting->name,  $request->value);
                $setting->name = $request->name;
                $setting->key = $request->key;
                $setting->value =   $submit_value;
            }

            $setting->creator_id = $creator_id;
            $setting->save();

            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);
        }


        // return     $setting;

    }



    /**
     * Display the specified resource.
     */
    public function show(setting $setting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(setting $setting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, setting $setting)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(setting $setting)
    {
        //
    }


    public function downloadBackup()
    {
        {
            $databaseName = config('database.connections.mysql.database'); //env('DB_DATABASE', 'd_pos');
            $username = config('database.connections.mysql.username');//env('DB_USERNAME', 'root');
            $password = config('database.connections.mysql.password'); //env('DB_PASSWORD','');
            $backupPath = storage_path( 'app/'.str_replace(' ', '_',  settings('app_name_short', 9)).'_'.date('d-M-Y-h-i-s-A').'.sql');
            $host = config('database.connections.mysql.host');//env('DB_HOST', '127.0.0.1');
    
    
    
    
            $command = "mysqldump --host={$host} --user={$username} --password='{$password}' {$databaseName} > {$backupPath}";
            //dd($command);
    
            try {
                if(function_exists('exec')){
                    \exec($command, $output, $returnVar);
                    // return response()->json(['message' => 'Backup successful!', 'path' => $backupPath], 200);
                    return response()->download($backupPath)->deleteFileAfterSend(true);
                }
            } catch (\Exception $e) {
              
                
            }
            
              
            try {
                
               // Execute the command using the shell
               $process = new Process(["cmd", "/c", $command]); // cmd /c executes the command in the shell
               $process->mustRun();  // This will throw an exception if the process fails
    
               // After the command runs, return the backup file as a download
                   return response()->download($backupPath)->deleteFileAfterSend(true); // Deletes the file after sending
            } catch (\Exception $e) {
                return response()->json(['error' => 'Exception occurred!', 'details' => $e->getMessage()], 500);
            }
        }

    }
}
