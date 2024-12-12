<?php

namespace App\Http\Controllers\courier;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Models\courier\CourierCredential;

class CourierCredentialController extends Controller
{
    public function index(){

        $payment_credentials = CourierCredential::get();

        return view('admin.settings.courier', compact('payment_credentials'));
    }

    public function update(Request $request, CourierCredential $courier_configuration ){
        $request = $request->except(['_token', '_method']);
        foreach($request as $key => $value){
             $courier_configuration[$key] = $value;

        }
        $courier_configuration->save();


            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);

    }


    // public function show(PaymentCredential $courier_configuration){
    //     $data = [

    //     ];
    //     if ($courier_configuration->provider == 'AmarPay') {
    //         $amarpay = new amarpayController($data);
    //         return $amarpay->payment();

    //     }elseif($courier_configuration->provider == 'SSLCommerz'){
    //         $sslcommerz = new SslCommerzPaymentController();
    //         return $sslcommerz->index($data);
    //     }elseif($courier_configuration->provider == 'paypal'){
    //         $paypal = new PaymentController($data);
    //         return $paypal->createPayment();
    //     }elseif($courier_configuration->provider == 'stripe'){
    //         $paypal = new stripePaymentController($data);
    //         return $paypal->create();

    //     }

    //     return 34534;

    // }
}
