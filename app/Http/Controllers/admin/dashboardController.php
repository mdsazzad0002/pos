<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Models\order;
use App\Models\product;
use Carbon\Carbon;
use Illuminate\Http\Request;

class dashboardController extends Controller
{
    public function index(){
        return view('admin.index');
    }


    public function latest_order(){
        return response()->json(order::with('customer')->limit(8)->select('order_id', 'id', 'customer_id', 'price', 'quantity')->orderByDesc('id')->get());
    }

    public function latest_customer(){
        $customer = Customer::orderByDesc('id')->limit(15)->get();
        $count = Customer::whereDate('created_at' ,'>=', Carbon::today()->subDays(3))->count();
        return response()->json(['customer'=>$customer, 'count'=>$count]);
    }

    public function recent_product(){
        return response()->json(product::limit(6)
        ->select('name', 'id','short_description', 'variant_on', 'selling_price')
        ->orderByDesc('id')->get());
    }
}
