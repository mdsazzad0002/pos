<?php

namespace App\Http\Controllers\payment\Paypal;


use GuzzleHttp\Client;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\payment\PaymentCredential;
use App\Models\payment\TransectionInformation;

class PaymentController extends Controller
{
    protected $client;
    protected $clientId;
    protected $clientSecret;
    protected $baseUrl;

    protected $gateway;


    public function __construct($data = null)
    {
        $payment_credentials = PaymentCredential::where('provider', 'paypal')->first();


        $this->client = new Client();
        $this->clientId = $payment_credentials->client_id;
        $this->clientSecret = $payment_credentials->secret;
        $this->baseUrl = $payment_credentials->sandbox_status  == 1
            ? 'https://api.sandbox.paypal.com'
            : 'https://api.paypal.com';



        $this->gateway = [
            'intent' => 'sale',
            'payer' => [
                'payment_method' => 'paypal',
            ],
            'redirect_urls' => [
                'return_url' => route('paypal.payment.success'),
                'cancel_url' => route('paypal.payment.cancel'),
            ],
            'transactions' => [
                    [
                        'amount' => [
                            'total' => number_format(5, 2, '.', ''), // Ensure correct format
                            'currency' => strtoupper('USD'), // Ensure uppercase currency
                        ],
                    'description' => 'demo description',
                    'tnx_id_by_user' => uniqid(),
                    'user_id' => auth()->user()->id ?? 0,
                    'location_id' => 0,
                    'order_id' => '1',
                    'customer' => '  ',
                    'email' => '  ',
                    'phone' => '  ',
                    'address' => '  ',
                    'charge' => '  ',
                    'method_id' => 0,
                ],
            ],
        ];
    }




    public function getAccessToken()
    {
        $response = $this->client->post("{$this->baseUrl}/v1/oauth2/token", [
            'auth' => [$this->clientId, $this->clientSecret],
            'form_params' => [
                'grant_type' => 'client_credentials',
            ],
            'verify' => false
        ]);

        return json_decode($response->getBody())->access_token;
    }


    public function createPayment()
    {
        $accessToken = $this->getAccessToken();



        $response = $this->client->post("{$this->baseUrl}/v1/payments/payment", [
            'headers' => [
                'Authorization' => "Bearer $accessToken",
                'Content-Type' => 'application/json',
            ],
            'json' => $this->gateway,
            'verify' => false, // For testing only
        ]);

        $data = json_decode($response->getBody());

         $data_store =  $this->executePayment($data);

        if($data_store['type'] == 'success' ){
            return redirect($data_store['url']);
        }else{
            return $data_store['message'];
        }


    }
    public function executePayment($data = null)
    {
        if ($data != null) {
            if ($data->state == 'created') {
                $transection = new TransectionInformation;
                $transection->payment_method_id =  $this->gateway['transactions'][0]['method_id'];// Assuming 'payment_method' is the ID
                $transection->user_id = $this->gateway['transactions'][0]['user_id']; // Accessing the first transaction
                $transection->location_id = $this->gateway['transactions'][0]['location_id'];
                $transection->order_id = $this->gateway['transactions'][0]['order_id'];
                $transection->name = $this->gateway['transactions'][0]['customer'];
                $transection->email = $this->gateway['transactions'][0]['email'];
                $transection->phone = $this->gateway['transactions'][0]['phone'];
                $transection->address = $this->gateway['transactions'][0]['address'];
                $transection->status = 'Pending'; // Set initial status
                $transection->description = $this->gateway['transactions'][0]['description'];
                $transection->amount = $this->gateway['transactions'][0]['amount']['total']; // Adjusted to access total
                $transection->by_method = $this->gateway['payer']['payment_method'];
                $transection->payment_charge = $this->gateway['transactions'][0]['charge'];
                $transection->currency = $this->gateway['transactions'][0]['amount']['currency']; // Adjusted to access currency

                $transection->mer_txnid = $data->id; // Assuming this is unique for the user



                $transection->updater = auth()->user()->id ?? 0;;
                $transection->creator = auth()->user()->id ?? 0;
                $transection->save();


                return [
                    'type' => 'success',
                    'url' => collect($data->links)->where('rel', 'approval_url')->first()->href,
                    'message' => 'Successfully get linked',
                ];



            }else{
                return [
                    'type' => 'error',
                    'url' => '',
                    'message' => 'Data Empty',
                ];
            }
        }else{
            return [
                'type' => 'error',
                'url' => '',
                'message' => 'Something is wrong',
            ];
        }

    }


    public function success(Request $request)
    {
        $transection = TransectionInformation::where('mer_txnid', $request->paymentId)->first();
        if($transection){
            $transection->token = $request->token;
            // $transection->store_amount = $request->amount;
            $transection->PayerID = $request->PayerID;
            $transection->status = 'success';
            $transection->all_response = $request->all();
            $transection->save();
        }

        return redirect('/')->with('message', [
            'status' => 'success',
            'message' => 'Successfully payment completed by paypal'
        ]);
        // Handle the successful payment here
        // Use $request->input('transactionId') to get the transaction ID if needed
    }

    public function cancel(Request $request)
    {

        return redirect('/')->with('message', [
            'status' => 'error',
            'message' => 'Payment Cancel'
        ]);
    }
}
