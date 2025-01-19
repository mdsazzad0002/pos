<?php

namespace App\Http\Controllers;

use App\Models\customer;
use App\Models\order;
use Illuminate\Http\Request;

class TrackingOrderController extends Controller
{
    public function index(Request $request){


        $order = order::join('order_events', 'order_events.order_id', '=', 'orders.id')->where(function ($query) use ($request) {
            $user = null;
            if($request->has('idOrder')){
                if($request->idOrder != null && $request->idOrder != '' && $request->idOrder != 0){
                    $order_id = str_replace('#ID', '', $request->idOrder);
                    $query->where('order_id',  $order_id);
                }
            }

            if($request->has('email')){
                if($request->email != null && $request->email != '' && $request->email != 0){
                   $user = customer::where('email', $request->email)->first();
                }
            }else{
                $user = auth()->guard('customer')->user();
            }

            if($user){
                $query->where('customer_id', $user->id);
            }


        })->get();
        
       return response()->json($order);

    }
}
