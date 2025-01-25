<?php

namespace App\Http\Controllers;

use App\Models\Customer as  customer;
use App\Models\order;
use Illuminate\Http\Request;

class TrackingOrderController extends Controller
{
    public function index(Request $request){


        $order = order::join('order_events', 'order_events.order_id', '=', 'orders.id')
                ->join('customers', 'customers.id', '=', 'orders.customer_id')
                ->join('order_statuses', 'order_statuses.id', '=', 'order_events.status_id')
            
        ->where(function ($query) use ($request) {
            $user = null;
            if($request->has('idOrder')){
                if($request->idOrder != null && $request->idOrder != '' && $request->idOrder != 0){
                    
                    $order_id = str_replace('#', '', $request->idOrder);
                    $order_id = str_replace('I', '',   $order_id);
                    $order_id = str_replace('D', '',   $order_id);

                    $query->where('orders.order_id',  $order_id);
                }
            }

            if($request->has('email')){
                if($request->email != null && $request->email != '' && $request->email != 0){
                   $user = customer::where('customers.email', $request->email)->first();
                }
            }else{
                $user = auth()->guard('customer')->user();
            }

            if($user){
                $query->where('orders.customer_id', $user->id);
            }


        })->select(
            'orders.order_id as order_id', 'orders.quantity as quantity', 'orders.price as price',
            'customers.name as customer_name', 'customers.email as customer_email', 'customers.phone as customer_phone',
            'order_events.created_at as created_at', 'order_events.note as note',
                'order_statuses.name as status')->get();
        
       return response()->json($order);

    }
}
