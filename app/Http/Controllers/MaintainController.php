<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MaintainController extends Controller
{
    public function index(){

        $maintanance_status =  config('app.maintenance.status');
        $maintanance_to =  config('app.maintenance.time');
        $maintanance_from =  config('app.maintenance.from');

        return view('admin.maintainance.index', compact('maintanance_status', 'maintanance_to', 'maintanance_from'));
    }
    public function update(Request $request){


        $status = $request->maintanance_status ? 'true' : 'false';
        $form_date = $request->form_date ?? '';
        $to_date = $request->to_date ?? '';

        updateEnvFile('APP_MAINTANANCE', $status);
        updateEnvFile('APP_MAINTENANCE_TIME_FROM', $form_date); // Time from
        updateEnvFile('APP_MAINTENANCE_TIME', $to_date); // Time to

       return back();
    }

   
}
