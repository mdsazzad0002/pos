<?php

namespace App\Http\Controllers\courier\bdcourier;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class trackingController extends Controller
{
    public function tracking(Request $request){

      $phone = $request->phone ?? null;

        if(settings('bd_courier_tracking_status', 27) == 1){


        $curl = curl_init();

        curl_setopt_array($curl, array(
          CURLOPT_URL => 'https://bdcourier.com/api/courier-check?phone='.$request->phone,
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_HTTPHEADER => array(
            'Authorization: '.settings('bd_courier_tracking_id', 27)
          ),
          CURLOPT_SSL_VERIFYPEER => false,  // Disable SSL peer verification
          CURLOPT_SSL_VERIFYHOST => false,  // Disable host verification
        ));

        $response = curl_exec($curl);

        // Check for errors
        if($response === false) {
             echo 'cURL Error: ' . curl_error($curl);
        } else {
              //$response;  // Show the response
        }

        curl_close($curl);


        // return $request;
        return view('admin.courier.bdcourier.index', compact('response','phone'));
      }else{
        return view('admin.courier.bdcourier.index', [
            'response' => [
                'message' => 'Please Enabled courier settings',
                'status' => 'error'
            ],
            'phone' => $phone
        ]);
       
    }
    }
}
