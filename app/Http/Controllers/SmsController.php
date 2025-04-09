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
        $request->validate([
            // 'message' => 'required',
            'phone' => 'required'
        ]);

        $data = [
            
            'message' =>  $request->message ?? 'test message form '. settings('app_name_short', 9),
            'phone' => $request->phone
        ];

        $final_data = json_decode(json_encode($data));
        if(settings('mariam_api_status',87)){
            return $this->mariamSend($final_data);
        }

        return json_encode([
            'title' => 'Not Found any active messaging  plaform',
            'status' => 'error'
        ]);
    }


    public function mariamSend( $request){
      $error_data = [
        1002 =>	'Sender Id/Masking Not Found',
        1003 =>	'API Not Found',
        1004 =>	'SPAM Detected',
        1005 =>	'Internal Error',
        1006 =>	'Internal Error',
        1007 =>	'Balance Insufficient',
        1008 =>	'Message is empty',
        1009 =>	'Message Type Not Set (text/unicode)',
        1010 =>	'Invalid User & Password',
        1011 =>	'Invalid User Id',
        1012 =>	'Invalid Number',
        1013 =>	'API limit error',
        1014 =>	'No matching template',
        1015 =>	'SMS Content Validation Fails',
        1016 =>	'IP address not allowed!!',
        1019 =>	'Sms Purpose Missing'
      ];


        // return $this->send_sms();
        $response_data = [];
        $api_key = settings('maram_api_key',87);
        $api_status = settings('mariam_api_status',87);
        $senderid = settings('mariam_api_serder_id', 87);//$request->senderid;

        $contacts = $request->phone;
        $message = $request->message ;

        if($api_status == 1){
            $response = Http::withOptions([
                'verify' => false,
            ])->post('https://sms.mram.com.bd/smsapi',[
                'api_key' => $api_key,
                'type' => (preg_match('/[^\x00-\x7F]/', $message) ? 'unicode' : 'text'),
                'contacts' => $contacts,
                'senderid' => $senderid,
                'msg'=> $message 
            ]);


             $error_code = $response->json();
            if (array_key_exists($error_code, $error_data)) {
                $response_data['title'] = $error_data[$error_code];
                $response_data['type'] = 'error';
                $response_data['refresh'] = 'false';
     
    
            }else{

                $response_data['title'] = 'Successfully send message';
                $response_data['type'] = 'success';
                $response_data['refresh'] = 'false';
            }

        }else{
            $response_data['title'] = 'Status Disabled';
            $response_data['type'] = 'error';
            $response_data['refresh'] = 'false';

        }

        return json_encode($response_data);
      
    }




}
