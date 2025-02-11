<?php

namespace App\Http\Controllers;

use App\Models\Customer as customer;
use App\Models\upload;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Support\Facades\Auth;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Hash;

class GoogleLoginController extends Controller
{

    public function uploads_url_file($url, $source = 'url', $id = null){
        if($id != null){
            $upload = Upload::where('id', $id)->first(); // Get the record first

            if ($upload) {
                $upload->update([
                    'name' => $url,
                    'extension' => 'jpg',
                    'size' => 0,
                    'source' => $source,
                    'user_id' => 0
                ]);

                return $upload->id; // Return the ID of the updated record
            }

        }
        return upload::create(
            [
                    'name' => $url,
                    'extension' => 'jpg',
                    'size' => 0,
                    'source' => $source,
                    'user_id'=> 0

                ]
        )->id;
    }
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }



    public function handleGoogleCallback()
    {
        $googleUser = Socialite::driver('google')->stateless()
        ->setHttpClient(new \GuzzleHttp\Client(['verify' => false])) // Disable SSL verification
        ->user();

        // dd($googleUser);
        $user = customer::where('email', $googleUser->email)->first();
        if($user != null){
            $user->image = $this->uploads_url_file($googleUser->avatar, 'url',  $user->upload_id);
        }else{

            // dd($googleUser);

            $user = customer::create([
                // 'google_id' => $googleUser->id,
                'name' => $googleUser->name,
                'email' => $googleUser->email,
                'image' => $this->uploads_url_file($googleUser->avatar, 'url'),
                'password' => bcrypt($googleUser->name),
            ]);
        }
        Auth::guard('customer')->login($user);

        $profile_dashboard = \App\Models\Page::where('status', 1)->where('page_type', 'profile_dashboard')->first();
        if( $profile_dashboard){
            return redirect( $profile_dashboard->slug); // Redirect to the desired page
        }
        return redirect('/'); // Redirect to the desired page

    }


    // Facebook login
    public function redirectToFacebook () {
        return Socialite::driver('facebook')->redirect();
    }

    public function handleFacebookCallback(){
        $facebookUser = Socialite::driver('facebook')->stateless()
        ->setHttpClient(new \GuzzleHttp\Client(['verify' => false])) // Disable SSL verification
        ->user();

        //echo $facebookUser->email;
        //dd($facebookUser);

        // Check if the user already exists
        $user = customer::where('facebook_id', $facebookUser->id)->first();



        if (!$user) {
            // Create a new user
            $user = customer::create([
                'name' => $facebookUser->name,
                'email' => $facebookUser->email ?? '',
                'facebook_id' => $facebookUser->id,
                'password' => bcrypt($facebookUser->name), // You may want to generate a random password
                'upload_id' => $this->uploads_url_file($facebookUser->avatar, 'url') // You may want to generate a random password
            ]);
        }else{
            $user->upload_id = $this->uploads_url_file($facebookUser->avatar, 'url',  $user->upload_id);
            $user->save();
        }

        // Log the user in
        Auth::guard('customer')->login($user);
        $profile_dashboard = \App\Models\Page::where('status', 1)->where('page_type', 'profile_dashboard')->first();

        if( $profile_dashboard){
            return redirect( $profile_dashboard->slug); // Redirect to the desired page
        }
        return redirect('/'); // Redirect to the desired page
    }
}
