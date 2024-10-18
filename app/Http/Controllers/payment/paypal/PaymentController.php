<?php

namespace App\Http\Controllers\payment\Paypal;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PaymentController extends Controller
{
    protected $paymentService;

    public function __construct(paypalController $paymentService)
    {
        $this->paymentService = $paymentService;
    }

    public function purchase(Request $request)
    {
        $response = $this->paymentService->purchase([
            'amount' => '5.00',
            'currency' => 'USD',
            'order_ID' => '1',
            'tnx_id_by_user' =>uniqid(),
            'user_id' => auth()->user()->id ?? 0,
            'location_id'=> 0,
            'returnUrl' => route('paypal.payment.success'),
            'cancelUrl' => route('paypal.payment.cancel'),
            'description' => 'Order Description',
        ]);

        if ($response->isRedirect()) {
            // Redirect to the payment gateway
            return $response->redirect();
        } else {
            // Payment failed
            return back()->with('error', $response->getMessage());
        }
    }

    public function success(Request $request)
    {
        return $request;
        // Handle the successful payment here
        // Use $request->input('transactionId') to get the transaction ID if needed
        return 'Payment successful!';
    }

    public function cancel()
    {
        return 'Payment canceled.';
    }
}
