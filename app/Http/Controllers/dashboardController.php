<?php

namespace App\Http\Controllers;

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

        // $mailInfo = [
        //     'title' => 'New Order title',
        //     'subject' => 'New Order subject',
        //     'body' => 'New Order body',
        //     'user'=>User::first()
        // ];
        // Mail::to($mailInfo['user']->email, $mailInfo['user']->name)->send(new MailerDynamic($mailInfo));

        // $notificationInfo = [
        //     'line' => 'New Order title',
        //     'action' => 'Click To Find',
        //     'url' => '/',
        //     'greetings' => 'Thank you for getting',
        //     'user'=>User::first()
        // ];

        // Notification::send($notificationInfo['user'], new NotificationDynamic($notificationInfo));
        // DeviceTracker::flagCurrentAsVerified();

        // $device = DeviceTracker::detectFindAndUpdate();
        // dd($device);
        // Auth::logoutOtherDevices('admin@gmail.com');



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

    public function noti(){
        return view('noti');
    }
}
