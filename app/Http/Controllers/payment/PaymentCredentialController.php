<?php

namespace App\Http\Controllers\payment;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\payment\PaymentCredential;
use App\Http\Controllers\payment\amarpay\amarpayController;
use App\Http\Controllers\payment\Paypal\PaymentController;
use App\Http\Controllers\payment\sslcommerz\SslCommerzPaymentController;
use App\Http\Controllers\payment\stripe\stripePaymentController;
use App\Models\order;
class PaymentCredentialController extends Controller
{
    public function index(){

        $payment_credentials = PaymentCredential::get();

        return view('admin.settings.payment', compact('payment_credentials'));
    }

    public function update(Request $request, PaymentCredential $payment_configuration ){
        if(!$payment_configuration){
            return response()->json(['message' => 'Payment Credential not found'], 404);
        }
        
        $validatedData = $request->only([
            'provider', 'store_id', 'store_password', 'merchant_id', 'api_key', 'signature_key', 'app_key', 'app_secret', 'username', 'password', 'merchant_number', 'public_key', 'private_key', 'client_id', 'secret', 'publishable', 'sandbox_status', 'status', 'charge', 'banach', 'country'
        ]);
        $payment_configuration->update($validatedData);
        
    

            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);

    }


    public function show(Request $request,  $payment_configuration = null){

        $data =[];
        if($request->has('payment_method') && $request->has('order_id')){

    
            $request->validate(
                [
                    'payment_method'=>'required',
                    'order_id'=>'required',
                    ]
                );
                $payment_configuration = PaymentCredential::find($request->payment_method);
                $order = order::find($request->order_id);
                if($payment_configuration && $order){

                    $data = [
                        'amount' => $order->current_cash_collection(),
                        'email' => $order->customer?->email,
                        'description' => $order->note,
                        'phone' => $order->customer?->phone,
                        'customer' => $order->customer?->name,
                        'address' => $order->customer?->address,
                        'currency' =>'BDT',
                        'location_id' => $order->address,
                        'order_id' => $order->id,
                    ];

                }else{
                    dd('Someting went wrong');
                }

        }elseif($payment_configuration != null){
            $payment_configuration = PaymentCredential::find($payment_configuration);
        }

        // dd($data);
        // http://pos.localhost/checkout/payment?payment_method=3&order_id=21
    
        if ($payment_configuration->provider == 'AmarPay') {
            $amarpay = new amarpayController($data);
            return $amarpay->payment();

        }elseif($payment_configuration->provider == 'SSLCommerz'){
            $sslcommerz = new SslCommerzPaymentController($data);
            return $sslcommerz->index();
        }elseif($payment_configuration->provider == 'paypal'){
            $paypal = new PaymentController($data);
            return $paypal->createPayment();
        }elseif($payment_configuration->provider == 'stripe'){
            $paypal = new stripePaymentController($data);
            return $paypal->create();

        }

        return 34534;

    }
    public function payment(Request $request){
        return $this->show($request, $request->payment_method );
        return $request->all();

    }
}
