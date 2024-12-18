<?php

use Database\Seeders\DatabaseSeeder;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\SettingController;

use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\dashboardController;



use App\Http\Controllers\Auth\LoginCheckController;

use App\Http\Controllers\payment\Paypal\PaymentController;
use App\Http\Controllers\payment\amarpay\amarpayController;
use App\Http\Controllers\payment\braintree\BraintreeController;
use App\Http\Controllers\payment\stripe\stripePaymentController;
use App\Http\Controllers\payment\sslcommerz\SslCommerzPaymentController;
use App\Http\Controllers\vatController;
use App\Http\Controllers\frontend\HomeController as home;
use App\Http\Controllers\OfferbannerController;
use App\Http\Controllers\PosController;
use App\Models\customer;
use Illuminate\Support\Facades\Auth;

use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/


Route::get('/migrate', function(){
    Artisan::call('migrate');
    // toastr()->success('Successfully migrated', 'Congrats');
    return back();
});
Route::get('/migrate/seed', function(){
    $db_seeder = new DatabaseSeeder;
    $db_seeder->run();
    // toastr()->success('Successfully seed', 'Congrats');
    return back();
});



Route::get('clear', function () {
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    Artisan::call('route:clear');
    // toastr()->success('Successfully cleared', 'Congrats');
    return back();
});

Route::get('fresh', function () {
    Artisan::call('migrate:fresh --seed');
    return back();
});



// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/dashboard', function () {
    return redirect('admin/');
})->middleware(['auth', 'verified'])->name('dashboard');


Route::post('/uploads', [UploadController::class, 'store']);
Route::get('/uploads/get', [UploadController::class, 'index']);

Route::get('notification', [dashboardController::class, 'noti']);


Route::post('user/customer-profile_pic/{customer}',[App\Http\Controllers\CustomerController::class, 'customer_profile_pic'])->name('customer_profile_pic.update');
Route::post('user/customer-register',[App\Http\Controllers\CustomerController::class, 'customerStore'])->name('customer_register');
Route::post('user/customer-login', [App\Http\Controllers\CustomerController::class, 'customerLogin'])->name('customer_login');
Route::get('user/customer-logout', [App\Http\Controllers\CustomerController::class, 'customer_logout'])->name('customer_logout');

Route::get('user/google/redirect', [App\Http\Controllers\GoogleLoginController::class, 'redirectToGoogle'])->name('google.redirect');
Route::get('user/google/callback', [App\Http\Controllers\GoogleLoginController::class, 'handleGoogleCallback'])->name('google.callback');

require __DIR__.'/auth.php';



Route::get('device_access_check', [LoginCheckController::class, 'index']);





Route::any('setting-store-update', [SettingController::class, 'store'])->name('setting.store.update');





Route::group(['as' => 'amarpay.', 'prefix' => 'amarpay'], function () {
    Route::post('success', [amarpayController::class, 'success'])->name('success');
    Route::post('fail', [amarpayController::class, 'fail'])->name('fail');
    Route::get('cancel', [amarpayController::class, 'cancel'])->name('cancel');
});


Route::group(['as' => 'sslcommerz.', 'prefix' => 'sslcommerz'], function () {
    Route::get('/example1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
    Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

    Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
    Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

    Route::post('/success', [SslCommerzPaymentController::class, 'success']);
    Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
    Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

    Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
    //SSLCOMMERZ END

});

Route::group(['as' => 'paypal.', 'prefix' => 'paypal'], function () {
    Route::post('/purchase', [PaymentController::class, 'createPayment'])->name('payment.purchase');
    Route::get('/payment/success', [PaymentController::class, 'success'])->name('payment.success');
    Route::get('/payment/cancel', [PaymentController::class, 'cancel'])->name('payment.cancel');


});



Route::group(['as' => 'stripe.', 'prefix' => 'stripe'], function () {
    Route::get('/checkout', [stripePaymentController::class, 'create'])->name('checkout.create');
    Route::get('/checkout/success', [stripePaymentController::class, 'success'])->name('checkout.success');
    Route::get('/checkout/cancel', [stripePaymentController::class, 'cancel'])->name('checkout.cancel');


});



Route::group(['as' => 'baintree.', 'prefix' => 'baintree'], function () {
    Route::get('/generate-client-token', [BraintreeController::class, 'generateClientToken']);
    Route::get('/process-transaction', [BraintreeController::class, 'processTransaction']);

});



include(__DIR__ . '/courier.php');
