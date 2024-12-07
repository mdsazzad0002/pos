<?php

namespace App\Http\Controllers;

use App\Models\paymentMethod;
use App\Models\User;
use Illuminate\Http\Request;

class PaymentMethodController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request, User $user = null)
    {
        $payment_method = '';
        // dd($request);

        foreach ($request->village as $key => $items) {
            if(isset($items->payment_method_id[$key])){
                $payment_method =  paymentMethod::find($items->payment_method_id[$key]);
                if(!$payment_method){
                    $payment_method = new paymentMethod();
                }
            }else{
                $payment_method =  new paymentMethod();
            }

            $payment_method->card_holder = $request->card_holder[$key];
            $payment_method->identifier_code = $request->identifier_code[$key];
            $payment_method->provider = $request->provider[$key];
            $payment_method->account_no = $request->account_no[$key];
            $payment_method->branch = $request->branch[$key];
            $payment_method->paymethodable_type = User::class;
            $payment_method->paymethodable_id = $user->id;
            $payment_method->creator = $user->id;
            $payment_method->updater = $user->id;

            $payment_method->save();

        }
    }

    /**
     * Display the specified resource.
     */
    public function show(paymentMethod $paymentMethod)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(paymentMethod $paymentMethod)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, paymentMethod $paymentMethod)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(paymentMethod $paymentMethod)
    {
        //
    }
}
