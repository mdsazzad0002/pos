<?php

namespace App\Http\Controllers\payment\sslcommerz;

use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\payment\PaymentCredential;
use App\Models\payment\TransectionInformation;
use  App\Http\Controllers\payment\sslcommerz\SslCommerzNotification;

class SslCommerzPaymentController extends Controller
{


    private $store_id;
    private $signature_key;

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

    }





    public function exampleEasyCheckout()
    {
        return view('exampleEasycheckout');
    }

    public function exampleHostedCheckout()
    {
        return view('exampleHosted');
    }



    public function index()
    {
        # Here you have to receive all the order data to initate the payment.
        # Let's say, your oder transaction informations are saving in a table called "orders"
        # In "orders" table, order unique identity is "transaction_id". "status" field contain status of the transaction, "amount" is the order amount to be paid and "currency" is for storing Site Currency which will be checked with paid currency.

        $post_data = array();
        $post_data['total_amount'] = $this->amount; # You cant not pay less than 10
        $post_data['currency'] = $this->currency;
        $post_data['tran_id'] = $this->transection_id; // tran_id must be unique

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = $this->customer;
        $post_data['cus_email'] = $this->email;
        $post_data['cus_add1'] = $this->address;
        $post_data['cus_phone'] = $this->phone;


        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "Store Test";
        $post_data['ship_add1'] = "Dhaka";
        $post_data['ship_add2'] = "Dhaka";
        $post_data['ship_city'] = "Dhaka";
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = "1000";
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "Bangladesh";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = "Computer";
        $post_data['product_category'] = "Goods";
        $post_data['product_profile'] = "physical-goods";

        # OPTIONAL PARAMETERS
        $post_data['value_a'] = "ref001";
        $post_data['value_b'] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";



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


        $sslc = new SslCommerzNotification();
        # initiate(Transaction Data , false: Redirect to SSLCOMMERZ gateway/ true: Show all the Payement gateway here )
        $payment_options = $sslc->makePayment($post_data, 'hosted');

        if (!is_array($payment_options)) {
            print_r($payment_options);
            $payment_options = array();
        }

    }

    public function payViaAjax(Request $request)
    {

        # Here you have to receive all the order data to initate the payment.
        # Lets your oder trnsaction informations are saving in a table called "orders"
        # In orders table order uniq identity is "transaction_id","status" field contain status of the transaction, "amount" is the order amount to be paid and "currency" is for storing Site Currency which will be checked with paid currency.

        $post_data = array();
        $post_data['total_amount'] = '10'; # You cant not pay less than 10
        $post_data['currency'] = "BDT";
        $post_data['tran_id'] = uniqid(); // tran_id must be unique

        # CUSTOMER INFORMATION
        $post_data['cus_name'] = 'Customer Name';
        $post_data['cus_email'] = 'customer@mail.com';
        $post_data['cus_add1'] = 'Customer Address';
        $post_data['cus_add2'] = "";
        $post_data['cus_city'] = "";
        $post_data['cus_state'] = "";
        $post_data['cus_postcode'] = "";
        $post_data['cus_country'] = "Bangladesh";
        $post_data['cus_phone'] = '8801XXXXXXXXX';
        $post_data['cus_fax'] = "";

        # SHIPMENT INFORMATION
        $post_data['ship_name'] = "Store Test";
        $post_data['ship_add1'] = "Dhaka";
        $post_data['ship_add2'] = "Dhaka";
        $post_data['ship_city'] = "Dhaka";
        $post_data['ship_state'] = "Dhaka";
        $post_data['ship_postcode'] = "1000";
        $post_data['ship_phone'] = "";
        $post_data['ship_country'] = "Bangladesh";

        $post_data['shipping_method'] = "NO";
        $post_data['product_name'] = "Computer";
        $post_data['product_category'] = "Goods";
        $post_data['product_profile'] = "physical-goods";

        # OPTIONAL PARAMETERS
        $post_data['value_a'] = "ref001";
        $post_data['value_b'] = "ref002";
        $post_data['value_c'] = "ref003";
        $post_data['value_d'] = "ref004";


        #Before  going to initiate the payment order status need to update as Pending.
        $update_product = DB::table('orders')
            ->where('transaction_id', $post_data['tran_id'])
            ->updateOrInsert([
                'name' => $post_data['cus_name'],
                'email' => $post_data['cus_email'],
                'phone' => $post_data['cus_phone'],
                'amount' => $post_data['total_amount'],
                'status' => 'Pending',
                'address' => $post_data['cus_add1'],
                'transaction_id' => $post_data['tran_id'],
                'currency' => $post_data['currency']
            ]);

        $sslc = new SslCommerzNotification();
        # initiate(Transaction Data , false: Redirect to SSLCOMMERZ gateway/ true: Show all the Payement gateway here )
        $payment_options = $sslc->makePayment($post_data, 'checkout', 'json');

        if (!is_array($payment_options)) {
            print_r($payment_options);
            $payment_options = array();
        }

    }

    public function success(Request $request)
    {

        echo "Transaction is Successful";

        $tran_id = $request->input('tran_id');
        $amount = $request->input('amount');
        $currency = $request->input('currency');

        $sslc = new SslCommerzNotification();

        #Check order status in order tabel against the transaction id or order id.

        $order_details = TransectionInformation::where('mer_txnid',  $tran_id)->first();



        if ($order_details->status == 'Pending') {
            $validation = $sslc->orderValidate($request->all(), $tran_id, $amount, $currency);

            if ($validation) {
                /*
                That means IPN did not work or IPN URL was not set in your merchant panel. Here you need to update order status
                in order table as Processing or Complete.
                Here you can also sent sms or email for successfull transaction to customer
                */

                     if($order_details){

                        $order_details->store_amount = $request->amount;
                        $order_details->by_method = $request->card_type;
                        $order_details->status = 'success';
                        $order_details->all_response = $request->all();
                        $order_details->save();
                    }


                return redirect('/')->with('message', [
                    'status' => 'success',
                    'message' => 'Transaction is successfully Completed'
                ]);
            }
        } else if ($order_details->status == 'Processing' || $order_details->status == 'success') {
            /*
             That means through IPN Order status already updated. Now you can just show the customer that transaction is completed. No need to udate database.
             */

            return redirect('/')->with('message', [
                'status' => 'success',
                'message' => 'Transaction is successfully Completed'
            ]);
        } else {
            #That means something wrong happened. You can redirect customer to your product page.

            return redirect('/')->with('message', [
                'status' => 'error',
                'message' => 'Invalid Transaction'
            ]);
        }


        return redirect('/')->with('message', [
            'status' => 'success',
            'message' => 'Successfully payment completed by sslcommerz'
        ]);

    }

    public function fail(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_details = TransectionInformation::where('mer_txnid',  $tran_id)->first();


        if ($order_details->status == 'Pending') {
            if($order_details){

                $order_details->store_amount = $request->amount;
                $order_details->by_method = $request->card_type;
                $order_details->status = 'failed';
                $order_details->all_response = $request->all();
                $order_details->save();
            }
            echo "Transaction is Falied";
        } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {
            echo "Transaction is already Successful";
        } else {
            echo "Transaction is Invalid";
        }

    }

    public function cancel(Request $request)
    {
        $tran_id = $request->input('tran_id');


        $order_details = TransectionInformation::where('mer_txnid',  $tran_id)->first();


        if ($order_details->status == 'Pending') {
            if($order_details){

                $order_details->store_amount = $request->amount;
                $order_details->by_method = $request->card_type;
                $order_details->status = 'cancel';
                $order_details->all_response = $request->all();
                $order_details->save();
            }
            echo "Transaction is Cancel";
        } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {
            echo "Transaction is already Successful";
        } else {
            echo "Transaction is Invalid";
        }


    }

    public function ipn(Request $request)
    {
        #Received all the payement information from the gateway
        if ($request->input('tran_id')) #Check transation id is posted or not.
        {

            $tran_id = $request->input('tran_id');

            #Check order status in order tabel against the transaction id or order id.
            $order_details = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->select('transaction_id', 'status', 'currency', 'amount')->first();

            if ($order_details->status == 'Pending') {
                $sslc = new SslCommerzNotification();
                $validation = $sslc->orderValidate($request->all(), $tran_id, $order_details->amount, $order_details->currency);

                if ($validation == TRUE) {
                    /*
                    That means IPN worked. Here you need to update order status
                    in order table as Processing or Complete.
                    Here you can also sent sms or email for successful transaction to customer
                    */
                    $update_product = DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Processing']);

                    echo "Transaction is successfully Completed";
                }
            } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {

                #That means Order status already updated. No need to udate database.

                echo "Transaction is already successfully Completed";
            } else {
                #That means something wrong happened. You can redirect customer to your product page.

                echo "Invalid Transaction";
            }
        } else {
            echo "Invalid Data";
        }
    }

}
