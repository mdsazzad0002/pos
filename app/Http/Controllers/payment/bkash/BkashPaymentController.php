<?php

namespace App\Http\Controllers\payment\bkash;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\payment\bkash\BkashPayment;
use GuzzleHttp\Client;

class BkashPaymentController extends Controller
{



    public function index()
        {
            return view('payment.bkash.bkash-payment');
        }
        private $base_url;
        private $app_key;
        private $app_secret;
        private $username;
        private $password;

        public function __construct()
        {
            // bKash Merchant API Information

            // You can import it from your Database
            $bkash_app_key = '5tunt4masn6pv2hnvte1sb5n3j'; // bKash Merchant API APP KEY
            $bkash_app_secret = '1vggbqd4hqk9g96o9rrrp2jftvek578v7d2bnerim12a87dbrrka'; // bKash Merchant API APP SECRET
            $bkash_username = 'sandboxTestUser'; // bKash Merchant API USERNAME
            $bkash_password = 'hWD@8vtzw0'; // bKash Merchant API PASSWORD
            $bkash_base_url = 'https://checkout.sandbox.bka.sh/v1.2.0-beta'; // For Live Production URL: https://checkout.pay.bka.sh/v1.2.0-beta

            $this->app_key = $bkash_app_key;
            $this->app_secret = $bkash_app_secret;
            $this->username = $bkash_username;
            $this->password = $bkash_password;
            $this->base_url = $bkash_base_url;
        }


        // generate token
        public function getToken()
        {
            session()->forget('bkash_token');

            $client = new Client();
            // <base_url>/aladdin/api/v1/issue-token
            $response = $client->post("$this->base_url/checkout/token/grant", [
                'headers' => [
                    "Content-Type" => "application/json",
                    "password"=> $this->password,
                    "username"=>$this->username
                ],
                'json' => [
                    'app_key'=>$this->app_key,
		            'app_secret'=>$this->app_secret
                ],
                'verify' => false, // Disable SSL verification
            ]);

             $response =  json_decode($response->getBody()->getContents(), true);
             if(isset($response['id_token'])){
                 session()->put('bkash_token', $response['id_token']);
             }
            return $response;

        }




        // create payment
        public function createPayment(Request $request)
        {
            $amount=$_GET['amount'] ?? 10;
            $invoice=$_GET['invoice'] ?? 10;
            $token = session()->get('bkash_token');

            $client = new Client();
            // <base_url>/aladdin/api/v1/issue-token
            $response = $client->post("$this->base_url/checkout/payment/create", [
                'headers' => [
                    "Content-Type" => "application/json",
                    'authorization' => $token,
				    'x-app-key' => $this->app_key
                ],
                'json' => [
                    'amount'=>$amount,
                    'currency'=>'BDT',
                    'intent'=>'sale',
                    'merchantInvoiceNumber'=> rand(10000,50000),
                ],
                'verify' => false, // Disable SSL verification
            ]);
            return $response =  json_decode($response->getBody()->getContents(), true);


        }




        // payment Execute
        public function executePayment(Request $request)
        {
            $token = session()->get('bkash_token');

            $paymentID = $request->paymentID;
            $url = curl_init("$this->base_url/checkout/payment/execute/" . $paymentID);
            $header = array(
                'Content-Type:application/json',
                "authorization:$token",
                "x-app-key:$this->app_key"
            );

            curl_setopt($url, CURLOPT_HTTPHEADER, $header);
            curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
            $resultdata = curl_exec($url);
            curl_close($url);
            return json_decode($resultdata, true);
        }



        // query Payment
        public function queryPayment(Request $request)
        {
            $token = session()->get('bkash_token');
            $paymentID = $request->payment_info['payment_id'];

            $url = curl_init("$this->base_url/checkout/payment/query/" . $paymentID);
            $header = array(
                'Content-Type:application/json',
                "authorization:$token",
                "x-app-key:$this->app_key"
            );

            curl_setopt($url, CURLOPT_HTTPHEADER, $header);
            curl_setopt($url, CURLOPT_CUSTOMREQUEST, "GET");
            curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
            $resultdata = curl_exec($url);
            curl_close($url);
            return json_decode($resultdata, true);
        }


        // payment Success
        public function bkashSuccess(Request $request)
        {
            dd($request);
            // IF PAYMENT SUCCESS THEN YOU CAN APPLY YOUR CONDITION HERE
            // return response()->json(['status' => false]);
        }















        // refund page
        public function refundPage(){
            return view('payment.bkash.refund');
        }
        public function refund(Request $request) {
            // Fetching input values with defaults
            $amount = $request->input('amount', 10);
            $trxID = $request->input('trxID', 'BEJ80IMOSG'); // Ensure trxID is provided or use a default value
            $paymentID = $request->input('paymentID', 'CH0011pFaSAzX1716104752578'); // Transaction ID
            $reason = $request->input('reason', '54541'); // Reason for refund
            $sku = '3232';
            // Get token from session
            $token = session()->get('bkash_token');

            // Validate token presence
            if (!$token) {
                return response()->json(['error' => 'Token not found'], 400);
            }

            $url = curl_init("$this->base_url/checkout/payment/refund");
            $header = array(
                'Content-Type:application/json',
                "authorization:$token",
                "x-app-key:$this->app_key"
            );

            $post_fields = [
                'paymentID' => $paymentID,
                'amount' =>  $amount,
                'trxID' => $trxID,
                'sku' => $sku,
                'reason' => $reason,
            ];

            curl_setopt($url, CURLOPT_HTTPHEADER, $header);
            curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($url, CURLOPT_POSTFIELDS, json_encode($post_fields));
            curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
            $resultdata = curl_exec($url);
            curl_close($url);

            return json_decode($resultdata, true);

            // "completedTime": "2024-05-19T13:47:46:487 GMT+0600",
            // "transactionStatus": "Completed",
            // "originalTrxID": "BEJ80IMOSG",
            // "refundTrxID": "BEJ10IMPJR",
            // "amount": "10.00",
            // "currency": "BDT",
            // "charge": "0.00"
            // }
        }



}
