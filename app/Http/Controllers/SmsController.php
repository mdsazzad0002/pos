<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Http;


class SmsController extends Controller
{
    public function index(){
        return view('admin.settings.sms');
    }

    public function send(Request $request){

        return $this->send_sms();
        $response_data = [];
        $api_key = settings('maram_api_key',87);
        $api_status = settings('mariam_api_status',87);
        $senderid = '8809601014571';//$request->senderid;

        $contacts = $request->phone;
        $message = $request->message ?? 'test message form '. settings('app_name_short', 9);

        if($api_status == 1){
            $response = Http::withOptions([
                'verify' => false,
            ])->post('https://sms.mram.com.bd/smsapi',[
                'api_key' => $api_key,
                'type' => 'text',
                'contacts' => $contacts,
                'senderid' => $senderid,
                'msg'=> $message 
            ]);
            return $data =$response->json();

        }else{
            $response_data['title'] = 'Status Disabled';
            $response_data['type'] = 'error';
            $response_data['refresh'] = 'false';

        }

        return json_encode($response_data);
      
    }


    function send_sms() {
        $url = "https://sms.mram.com.bd/smsapi";
        $data = [
            "api_key" => settings('maram_api_key',87),
            "type" => "Application/Json",
            "contacts" => "8801590084779",
            "senderid" => "8801839908696",
            "msg" => "ok",
        ];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        $response = curl_exec($ch);
        curl_close($ch);
        return $response;
    }

}
