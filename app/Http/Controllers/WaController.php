<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Http;
use App\Models\WaMessage;
use App\Models\WaContact;


class WaController extends Controller
{

    public function __construct()
    {

        $this->token =  settings('token', '36');
        $this->phoneNumberId = settings('default_number_id',36);
        $this->appSecret = settings('secret',36);
        $this->status = settings('status',36);
        $this->verify_token = settings('verify_token',36);
        $this->verify_signature_status = settings('verify_signature_status',36);
        

    }

    

    public function sendMessage(Request $request){
        $request->validate([
            'phone'=>'required',
            'message'=>'required'
        ]);
        $phone = $request->phone;
        $message = $request->message;
      return  $this->sendTextMessage($phone, $message);
    }

    public function tokenGenerate(){
        $this->waService->getToken();
    }





    public function sendTextMessage($to, $message)
    {

        // $response = Http::withoutVerifying()->withHeaders([
        //     'Authorization' => 'Bearer '.$this->token,

        // ])->post('https://graph.facebook.com/v22.0/'.$this->phoneNumberId.'/messages', [
        //     'messaging_product' => 'whatsapp',
        //     'to' => ''.$to.'',
        //     'type' => 'template',
        //     'template' => [
        //         'name' => 'plain_text',
        //         'language' => [
        //             'code' => 'en_US',
        //         ],
        //         'components' => [
        //             [
        //                 'type' => 'body',
        //                 'parameters' => [
        //                     [
        //                         'type' => 'text',
        //                         'text' => $message,
        //                     ],
        //                 ],
        //             ],
        //         ],
        //     ],
        // ]);


        $response = Http::withoutVerifying()->withHeaders([
            'Authorization' => 'Bearer ' . $this->token,
        ])->post('https://graph.facebook.com/v22.0/' . $this->phoneNumberId . '/messages', [
            'messaging_product' => 'whatsapp',
            "recipient_type"=> "individual",
            'to' => $to,
            'type' => 'image',
            'image' => [
                'link' => 'http://pos.localhost/public/preset/fixing.png',
                'caption' => 'Here is your image!',
            ],
        ]);
        

       return $response = $response->json();
      

       
      if(isset($response['error'])){
        return json_encode([
                'title'=>$response['error']['message'],
                'type'=>'error',
                'refresh'=>'false',
            ]);
      }elseif(isset($response['messages'])){

        $contact = WaContact::updateOrCreate(
            ['wa_id' => $to],
            ['name' =>   null]
        );

        WaMessage::Create(
            [    
                'wa_contact_id' => $contact->id,
                'message_id' => $response['messages'][0]['id'],
                'body' => $message ?? null,
                'type' => 'text',
                'received_at' => \Carbon\Carbon::now(),
                'status' => 'accepted',
            ]
        );
    


          return json_encode([
              'title'=>'Successfully  Send _message',
              'type'=>'success',
              'refresh'=>'false',
          ]);

      }else{
        return json_encode([
            'title'=>'Someting went Wrong check manually',
            'type'=>'error',
            'refresh'=>'false',
        ]);
      }
    
    }

    public function show(){
        return 1231;
    }
}
