<?php

namespace App\Http\Controllers;

use App\Models\fcm;
use App\Models\unit;
use App\Models\User;
use App\Models\brand;
use App\Models\order;
use App\Models\product;
use App\Models\category;
use App\Models\customer;
use App\Models\purchase;
use App\Models\supplier;
use App\Mail\MailerDynamic;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Notifications\NotificationDynamic;
use Illuminate\Support\Facades\Notification;


class dashboardController extends Controller
{
    public function index(){

        $fcm = fcm::first();


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
        return view('admin.dashboard.index', compact('order', 'category', 'user', 'customer', 'brand', 'supplier','purchase','product', 'unit','role', 'fcm'));
    }


}
