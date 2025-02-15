<?php

namespace App\Http\Controllers\payment;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\payment\PaymentCredential;
use App\Http\Controllers\payment\amarpay\amarpayController;
use App\Http\Controllers\payment\Paypal\PaymentController;
use App\Http\Controllers\payment\sslcommerz\SslCommerzPaymentController;
use App\Http\Controllers\payment\stripe\stripePaymentController;

class PaymentCredentialController extends Controller
{
    public function index(){

        $payment_credentials = PaymentCredential::get();

        return view('admin.settings.payment', compact('payment_credentials'));
    }

    public function update(Request $request, PaymentCredential $payment_configuration ){
        $request = $request->except(['_token', '_method']);
        foreach($request as $key => $value){
             $payment_configuration[$key] = $value;

        }
        $payment_configuration->save();


            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);

    }


    public function show(Request $request, PaymentCredential $payment_configuration){
        $data = [

        ];
        if ($payment_configuration->provider == 'AmarPay') {
            $amarpay = new amarpayController($data);
            return $amarpay->payment();

        }elseif($payment_configuration->provider == 'SSLCommerz'){
            $sslcommerz = new SslCommerzPaymentController();
            return $sslcommerz->index($data);
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
