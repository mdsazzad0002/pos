<?php

namespace App\Http\Controllers\courier\steadfast;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\courier\CourierCredential;
class CourierHandler extends Controller
{
        public $Api_Key; //= "jwqjaywbmswqrwymm0bdvnwvrr6annc4";
        public $Secret_Key; //= "g94vnmgpdvehmsp8vrhgkyrv";
        public $provider_id; //= "g94vnmgpdvehmsp8vrhgkyrv";

        public function __construct()
        {
            $courier_credential = CourierCredential::where('provider', 'SteadFast')->first();
            if($courier_credential){
                $this->Api_Key = $courier_credential->Api_Key;
                $this->Secret_Key = $courier_credential->Secret_Key;
                $this->provider_id = $courier_credential->id;

            }
            // dd($this->Api_Key);
            
        }
        
        public  $base_url = 'https://portal.packzy.com/api/v1/';
      
        

       
        public function order_create($data_array){
            // Needed: invoice, recipient_name, recipient_phone, recipient_address, cod_amount, note
            $curl = curl_init();
        
            curl_setopt_array($curl, array(
                CURLOPT_URL => $this->base_url . 'create_order/?' . http_build_query($data_array),
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                CURLOPT_POSTFIELDS => '',
                CURLOPT_HTTPHEADER => array(
                    'Api-Key: ' . $this->Api_Key,
                    'Content-Type: application/json',
                    'Secret-Key: ' . $this->Secret_Key
                ),
                CURLOPT_SSL_VERIFYPEER => false, // Disable SSL verification
                CURLOPT_SSL_VERIFYHOST => false, // Optional: Ignore host verification
            ));
        
            $response = curl_exec($curl);
            // dd($response);
        
            if (curl_errno($curl)) {
                return 'cURL Error: ' . curl_error($curl);
            }
        
            curl_close($curl);
          
            return ($response);
        }

     
        


            
            
            public function bulkCreate($data){


        //     $data = array();
        //     foreach($orders as $order){
        //         $item = [
        //             'invoice' => $order->id,
        //             'recipient_name' => $order->address ? $order->address->name : 'N/A',
        //             'recipient_address' => $order->address ? $order->address->address : 'N/A',
        //             'recipient_phone' => $order->address ? $order->address->phone : '',
        //             'cod_amount' => $order->due_amount,
        //             'note' => $order->note,
        //         ];
        //     }
        //     $result = json_encode($data));

            
            // Example code
            $curl = curl_init();

            curl_setopt_array($curl, array(
                CURLOPT_URL => $this->base_url.'create_order/bulk-order/?data='.$data,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'POST',
                
                CURLOPT_HTTPHEADER => array(
                    'Api-Key:'. $this->Api_Key,
                    'Content-Type: application/json',
                    'Secret-Key:'. $this->Secret_Key
                ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);
            return json_decode($response);
            
        }
            
                   










        public function status_by_cid($id){
            // need cid
            $curl = curl_init();

            curl_setopt_array($curl, array(
            CURLOPT_URL => $this->base_url.'status_by_cid/'.$id,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
            CURLOPT_HTTPHEADER => array(
                'Api-Key:'. $this->Api_Key,
                'Content-Type: application/json',
                'Secret-Key:'. $this->Secret_Key
            ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);
            return json_decode($response);

             
            // Response:
            // {
            //     "status": 200,
            //     "delivery_status": "in_review"
            // }

        }


        public function status_by_invoice($invoice){
            // need $invoice id

                $curl = curl_init();

                curl_setopt_array($curl, array(
                CURLOPT_URL =>  $this->base_url.'status_by_invoice/'.$invoice,
                CURLOPT_RETURNTRANSFER => true,
                CURLOPT_ENCODING => '',
                CURLOPT_MAXREDIRS => 10,
                CURLOPT_TIMEOUT => 0,
                CURLOPT_FOLLOWLOCATION => true,
                CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                CURLOPT_CUSTOMREQUEST => 'GET',
                CURLOPT_HTTPHEADER => array(
                    'Content-Type: application/json',
                    'Secret-Key:'. $this->Secret_Key,
                    'Api-Key: '.$this->Api_Key,
                ),
                CURLOPT_SSL_VERIFYPEER => false, // Disable SSL verification
                CURLOPT_SSL_VERIFYHOST => false, // Optional: Ignore host verification
                ));

                $response = curl_exec($curl);

                curl_close($curl);
                return ($response);

        }

        public function status_by_trackingcode($trackingCode){
            // need trackingCode 
// dd($trackingCode);
            $curl = curl_init();

            curl_setopt_array($curl, array(
            CURLOPT_URL => $this->base_url.'status_by_invoice/'.$trackingCode,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
            CURLOPT_HTTPHEADER => array(
                'Api-Key:'. $this->Api_Key,
                'Content-Type: application/json',
                'Secret-Key:'. $this->Secret_Key
            ),
            CURLOPT_SSL_VERIFYPEER => false, // Disable SSL verification
            CURLOPT_SSL_VERIFYHOST => false, // Optional: Ignore host verification
            ));

            $response = curl_exec($curl);
            if (curl_errno($curl)) {
                return 'cURL Error: ' . curl_error($curl);
            }


            curl_close($curl);
            // dd($response);
            return $response;

        }




        public function get_balance(){
            $curl = curl_init();

            curl_setopt_array($curl, array(
            CURLOPT_URL => $this->base_url.'get_balance',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'GET',
            CURLOPT_HTTPHEADER => array(
                'Api-Key:'. $this->Api_Key,
                'Content-Type: application/json',
                'Secret-Key:'. $this->Secret_Key
            ),
            ));

            $response = curl_exec($curl);

            curl_close($curl);
            return json_decode($response);
   
        }
}
