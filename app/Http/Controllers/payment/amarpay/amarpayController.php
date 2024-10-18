<?php

namespace App\Http\Controllers\payment\amarpay;

use GuzzleHttp\Client;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\payment\PaymentCredential;
use GuzzleHttp\Exception\RequestException;
use App\Models\payment\TransectionInformation;
use App\Models\payment\transection_information;

class amarpayController extends Controller
{
    private $store_id;
    private $signature_key;
    private $base_url;
    private $base_sandbox = 'https://sandbox.aamarpay.com/index.php';
    private $base_live = 'https://secure.aamarpay.com/index.php';
    private $status;
    private $success_url;
    private $fail_url;
    private $transection_id;
    private $amount = 100;
    private $cancel_url;
    private $sandbox_status = 1;
    private $customer = 'example';
    private $email = 'example@gmail.com';
    private $phone = '01590000000';
    private $description ='example';
    private $address ='example';
    private $location_id = 0;
    private $payment_method_id = 0;
    private $user_id = 0;
    private $order_id = 0;
    private $payment_charge = 0;
    private $currency = 'BDT';


    /**
     * Summary of __construct
     * @param mixed $data =[customer, email, phone, amount, 'description]
     */
    public function __construct($data = null)
    { // Corrected method name
        $payment_credentials = PaymentCredential::where('provider', 'AmarPay')->first();

        if ($payment_credentials) { // Check if credentials exist
            $this->store_id = $payment_credentials->store_id;
            $this->signature_key = $payment_credentials->signature_key;
            $this->sandbox_status = $payment_credentials->sandbox_status;
            $this->status = $payment_credentials->status;
        }

        $this->transection_id = uniqid();
        $this->success_url = route('amarpay.success');
        $this->fail_url = route('amarpay.fail');
        $this->cancel_url = route('amarpay.cancel');

       $this->customer = $data['customer'] ?? $this->customer;
       $this->phone = $data['phone'] ?? $this->phone;
       $this->description = $data['description'] ?? $this->description;
       $this->email = $data['email'] ?? $this->email;
       $this->amount =  $data['amount'] ?? $this->amount;
       $this->amount +=($this->amount * $payment_credentials->charge);

        // Set the base URL based on the sandbox status
        $this->base_url = $this->sandbox_status == 1 ? $this->base_sandbox : $this->base_live;
    }


    public function token_generate()
    {
        $client = new Client();
        $url = $this->base_url;
        // dd($url);

        $response = $client->post($url, [
            'form_params' => [
                'store_id' => $this->store_id,
                'signature_key' => $this->signature_key,
                'cus_name' => $this->customer,
                'cus_email' => $this->email,
                'cus_phone' => $this->phone,
                'amount' => $this->amount,
                'currency' => $this->currency,
                'tran_id' => $this->transection_id,
                'desc' => $this->description,
                'success_url' => $this->success_url,
                'fail_url' => $this->fail_url,
                'cancel_url' => $this->cancel_url,
                'type' => 'json',
            ],
            'verify' => false, // Disable SSL verification for testing
        ]);

        $body = $response->getBody();



        return $body;
    }


    public function payment()
    {
        $data = $this->token_generate();
        $data = json_decode($data, true);

        if ($data['result'] == 'true') {
            $transection = new TransectionInformation;
            $transection->payment_method_id = $this->payment_method_id;
            $transection->user_id = $this->user_id;
            $transection->location_id = $this->location_id;
            $transection->order_id = $this->order_id;

            $transection->name = $this->customer;
            $transection->email = $this->email;
            $transection->phone = $this->phone;
            $transection->address = $this->address;
            $transection->status = 'Pending';
            $transection->description = $this->description;
            $transection->amount = $this->amount;
            $transection->payment_charge = $this->payment_charge;
            $transection->currency = $this->currency;

            $transection->mer_txnid = $this->transection_id;


            $transection->updater = auth()->user()->id ?? 0;;
            $transection->creator = auth()->user()->id ?? 0;
            $transection->save();

            $url = $data['payment_url'];
            return "<script type='text/javascript'> window.open('$url', '_self'); </script>";
        }
    }

    public function fail(Request $request)
    {
        
        $transection = TransectionInformation::where('mer_txnid', $request->mer_txnid)->first();
        if($transection){
            $transection->ip_address = $request->ip_address;
            $transection->store_amount = $request->amount;
            $transection->by_method = $request->card_type;
            $transection->status = 'cancel';
            $transection->service_charge = $request->pg_service_charge_bdt;
            $transection->all_response = $request->all();
            $transection->save();
        }
        return redirect('/');
    }
    public function cancel(Request $request)
    {
        return redirect('/');
    }
    public function success(Request $request)
    {
        $transection = TransectionInformation::where('mer_txnid', $request->mer_txnid)->first();
        if($transection){
            $transection->ip_address = $request->ip_address;
            $transection->store_amount = $request->amount;
            $transection->by_method = $request->card_type;
            $transection->status = 'success';
            $transection->service_charge = $request->pg_service_charge_bdt;
            $transection->all_response = $request->all();
            $transection->save();
        }
        return redirect('/');
    }
}
