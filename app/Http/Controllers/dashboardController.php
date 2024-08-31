<?php

namespace App\Http\Controllers;

use App\Models\brand;
use App\Models\category;
use App\Models\customer;
use App\Models\order;
use App\Models\product;
use App\Models\purchase;
use App\Models\supplier;
use App\Models\unit;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;

class dashboardController extends Controller
{
    public function index(){
        $order = order::count();
        $user = User::count();
        $customer = customer::count();
        $brand = brand::count();
        $supplier = supplier::count();
        $purchase = purchase::count();
        $product = product::count();
        $unit = unit::count();
        $role = Role::count();
        $category = category::count();
        return view('welcome', compact('order', 'category', 'user', 'customer', 'brand', 'supplier','purchase','product', 'unit','role'));
    }
}
