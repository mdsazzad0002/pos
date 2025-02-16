<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MaintainController extends Controller
{
    public function index(){

        $maintanance_status =  config('app.maintenance.status');
        $maintanance_to =  config('app.maintenance.time');
        $maintanance_from =  config('app.maintenance.from');


        $debug_status = config('app.debug', false);
        $app_name = config('app.name');
        $app_env = config('app.env');

       $pp_connection = config('database.default');
       $app_port = config('database.connections.'.$pp_connection.'.port');
       $app_db = config('database.connections.'.$pp_connection.'.database');
       $app_pass = config('database.connections.'.$pp_connection.'.password');
        $app_user = config('database.connections.'.$pp_connection.'.username');
        $app_host = config('database.connections.'.$pp_connection.'.host');


        return view('admin.maintainance.index', compact('maintanance_status', 'maintanance_to', 'maintanance_from','debug_status','app_name','app_env','pp_connection','app_port','app_db','app_pass','app_user','app_host'));
    }
    public function update(Request $request){

        if($request->has('debug_status') && $request->has('app_name') && $request->has('app_env')){
            updateEnvFile('APP_DEBUG', $request->debug_status);
            updateEnvFile('APP_NAME', $request->app_name);
            updateEnvFile('APP_ENV', $request->app_env);
        }

        if($request->has('maintanance_status') && $request->has('form_date') && $request->has('to_date')){
            $status = $request->maintanance_status ? 'true' : 'false';
            $form_date = $request->form_date ?? '';
            $to_date = $request->to_date ?? '';

             updateEnvFile('APP_MAINTANANCE', $status);
            updateEnvFile('APP_MAINTENANCE_TIME_FROM', $form_date); // Time from
            updateEnvFile('APP_MAINTENANCE_TIME', $to_date); // Time to
        }

        
        if($request->has('pp_connection') && $request->has('app_port') && $request->has('app_db') && $request->has('app_pass') && $request->has('app_user') && $request->has('app_host') ){
            $pp_connection = $request->pp_connection ?? '';
            $app_port = $request->app_port ?? '';
            $app_db = $request->app_db ?? '';
            $app_pass = $request->app_pass ?? '';
            $app_user = $request->app_user ?? '';
            $app_host = $request->app_host ?? '';
            updateEnvFile('DB_CONNECTION', $pp_connection);
            updateEnvFile('DB_PORT', $app_port);
            updateEnvFile('DB_DATABASE', $app_db);
            updateEnvFile('DB_PASSWORD', $app_pass);
            updateEnvFile('DB_USERNAME', $app_user);
            updateEnvFile('DB_HOST', $app_host);
        }


     

       return back();
    }

   
}
