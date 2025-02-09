<?php

namespace App\Http\Controllers;

use App\Models\Customer as customer;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Hash;

class GoogleLoginController extends Controller
{
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    // Route::get('/auth/callback/google/', function () {

//     $request_data =  $_GET;
//     $user = customer::where('email', $request_data['email'])->first();
//     if($user != null){
//         $user->image = $request_data['image'];
//     }else{
//         $user =new  customer;
//         $user->google_id = $request_data['id'];
//         $user->password = Hash::make($request_data['name']);
//         $user->image = $request_data['image'];
//         $user->email = $request_data['email'] ?? '';
//         $user->name = $request_data['name'];
//     }
//     $user->save();
//     Auth::guard('customer')->login($user);

//     return 'success';
// });


    public function handleGoogleCallback()
    {
        $googleUser = Socialite::driver('google')->stateless()->user();
        $user = customer::where('email', $googleUser->email)->first();
        if($user != null){
            $user->image = $googleUser->image;
        }else{
        {
            $user = customer::create([
                'google_id' => $googleUser->id,
                'name' => $googleUser->name,
                'email' => $googleUser->email,
                'image' => $googleUser->image,
                'password' => '',
            ]);
        }
        Auth::guard('customer')->login($user);
            return redirect('/');
        }
    }
}
