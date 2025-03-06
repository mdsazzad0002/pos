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

    public function update(Request $request,  $courier_configuration ){
        $courier_configuration = CourierCredential::findOrFail($courier_configuration);

        if($courier_configuration){

            $validatedData = $request->only([
                'provider', 'Secret_Key', 'Api_Key', 'client_id', 'client_secret',
                'secret_token', 'key', 'sandbox_status', 'status'
            ]);
            $courier_configuration->update($validatedData);
            
            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);
        }


            return json_encode([
                'title' => 'Failed to updated',
                'type' => 'error',
                'refresh' => 'false',
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
