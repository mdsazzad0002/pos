<?php

namespace App\Http\Controllers\payment\braintree;


use GuzzleHttp\Client;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BraintreeController extends Controller
{
    private $merchantId;
    private $publicKey;
    private $privateKey;
    private $apiUrl;
    private $client;


    public function __construct()
    {
        // Determine if we're in sandbox or live environment
        $env = 1;

        if ($env == 1) {
            $this->merchantId = 'bxqn974w5gzggj44';
            $this->publicKey = 'wktqb878b2x7jj7r';
            $this->privateKey = '4d024a30390cb9475e556d475aaa399f';
            $this->apiUrl = 'https://api.sandbox.braintreegateway.com/merchants' . "/{$this->merchantId}/client_token";
        } else {
            $this->merchantId = env('BRAINTREE_LIVE_MERCHANT_ID');
            $this->publicKey = env('BRAINTREE_LIVE_PUBLIC_KEY');
            $this->privateKey = env('BRAINTREE_LIVE_PRIVATE_KEY');
            $this->apiUrl = env('BRAINTREE_LIVE_API_URL') . "/{$this->merchantId}/client_token";
        }
    }

    // Generate client token for Braintree Drop-In UI
    public function generateClientToken()
    {
          $response = $this->client->request('GET', $endpoint, [
                'headers' => [
                    'Authorization' => 'Bearer ' . env('BENTREE_API_KEY'),
                ],
            ]);

            return json_decode($response->getBody(), true);
    }

    // Process a transaction
    public function processTransaction(Request $request)
    {
        $client = new Client();
        $nonce = $request->input('payment_method_nonce');
        $amount = $request->input('amount');

        // API URL for transactions
        $transactionUrl = $this->apiUrl . '/transactions';

        $response = $client->post($transactionUrl, [
            'headers' => [
                'Authorization' => "Basic " . base64_encode("{$this->publicKey}:{$this->privateKey}"),
                'Content-Type'  => 'application/json',
            ],
            'json' => [
                'transaction' => [
                    'amount' => $amount,
                    'payment_method_nonce' => $nonce,
                    'options' => [
                        'submit_for_settlement' => true
                    ]
                ]
            ],
            'verify' =>false
        ]);

        $transactionResponse = json_decode($response->getBody(), true);

        return response()->json($transactionResponse);
    }
}
