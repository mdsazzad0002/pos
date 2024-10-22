<?php

namespace App\Http\Controllers\payment\stripe;

use GuzzleHttp\Client;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use App\Models\payment\PaymentCredential;
use App\Models\payment\TransectionInformation;

class stripePaymentController extends Controller
{
    private $client;
    private $secret;
    private $Publishable;
    private $gateway;
    private $method_id;
    private $location_id;
    private $order_id;
    private $customer;
    private $user_id;
    private $tnx_id_by_user;
    private $phone;
    private $email;
    private $address;
    private $charge;

    public function __construct($data = null){
        $payment_credentials = PaymentCredential::where('provider', 'stripe')->first();

        $this->client = new Client();
        $this->Publishable = $payment_credentials->publishable;
        $this->secret = $payment_credentials->secret;
        $this->tnx_id_by_user = uniqid();
        $this->method_id = $payment_credentials->id;
        $this->user_id = auth()->user()->id ?? 0;
        $this->location_id = 0;
        $this->order_id = '1';
        $this->customer = '  ';
        $this->email = '  ';
        $this->phone = '  ';
        $this->address = '  ';
        $this->charge = $payment_credentials->charge;
        $this->gateway = [
            'payment_method_types[]' => 'card',
            'line_items' => [
                [
                    'price_data' => [
                        'currency' => 'usd',
                        'product_data' => [
                            'name' => 'Sample Product',
                        ],
                        'unit_amount' => 50, // Amount in cents
                    ],
                    'quantity' => 1,
                ],
            ],
            'mode' => 'payment',

            // optional

            // end optional
            'success_url' => route('stripe.checkout.success', ['id'=>$this->tnx_id_by_user]),
            'cancel_url' => route('stripe.checkout.cancel', ['id'=>$this->tnx_id_by_user]),
        ];

    }
    public function create()
    {

        $stripeSecretKey = $this->secret;

        // try {
            $response = $this->client->post('https://api.stripe.com/v1/checkout/sessions', [
                'headers' => [
                    'Authorization' => 'Bearer ' . $stripeSecretKey,
                    'Content-Type' => 'application/x-www-form-urlencoded',
                ],
                'form_params' => $this->gateway,
                'verify'=>false
            ]);

            $body = json_decode((string) $response->getBody(), true);
           if($body['object'] == 'checkout.session' && $body['id'] != null){
                $transection = new TransectionInformation;
                $transection->payment_method_id =  $this->method_id;// Assuming 'payment_method' is the ID
                $transection->user_id = $this->user_id; // Accessing the first transaction
                $transection->location_id = $this->location_id;
                $transection->order_id = $this->order_id;
                $transection->name = $this->customer;
                $transection->email = $this->email;
                $transection->phone = $this->phone;
                $transection->address = $this->address;
                $transection->status = 'Pending'; // Set initial status

                $transection->amount =  $body['amount_subtotal']; // Adjusted to access total
                $transection->by_method = $body['payment_method_types'][0];
                $transection->payment_charge =  $this->address;
                $transection->currency =  'usd'; // Adjusted to access currency
                $transection->all_response =  json_encode($body); // Adjusted to access currency

                $transection->mer_txnid = $body['id']; // Assuming this is unique for the user
                $transection->tnx_id_by_user = $this->tnx_id_by_user; // Assuming this is unique for the user



                $transection->updater = auth()->user()->id ?? 0;;
                $transection->creator = auth()->user()->id ?? 0;
                $transection->save();
                return Redirect::away($body['url']);
           }
        // } catch (\Exception $e) {
        //     return redirect()->route('stripe.checkout.cancel')->with('message', 'Error: ' . $e->getMessage());
        // }
    }

    public function success(Request $request)
    {
        $transection = TransectionInformation::where('tnx_id_by_user', $request->id)->first();
        if($transection){
            $transection->status = 'success';
            $transection->save();
        }
        return redirect('/')->with('message', [
            'status' => 'success',
            'message' => 'Successfully payment completed by stripe'
        ]);
    }

    public function cancel(Request $request)
    {
        $transection = TransectionInformation::where('tnx_id_by_user', $request->id)->first();
        if($transection){
            $transection->status = 'cancel';
            $transection->save();
        }
        return redirect('/')->with('message', [
            'status' => 'error',
            'message' => 'Payment cancel by stripe user'
        ]);
    }
}
