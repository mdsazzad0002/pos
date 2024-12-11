<?php

use App\Http\Controllers\MessageController;
use App\Models\LeadContact;
use Database\Seeders\DatabaseSeeder;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\AreaController;
use App\Http\Controllers\homecontroller;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\userController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\BranchController;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SettingController;

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\dashboardController;

use App\Http\Controllers\PermissionController;

use App\Http\Controllers\CommisionAgentController;

use App\Http\Controllers\Auth\LoginCheckController;
use App\Http\Controllers\CashCounterController;
use App\Http\Controllers\discountController;
use App\Http\Controllers\StockManagementController;

use App\Http\Controllers\PushNotificationController;
use App\Http\Controllers\payment\paypal\paypalController;
use App\Http\Controllers\payment\Paypal\PaymentController;
use App\Http\Controllers\payment\amarpay\amarpayController;
use App\Http\Controllers\payment\PaymentCredentialController;
use App\Http\Controllers\payment\braintree\BraintreeController;
use App\Http\Controllers\payment\stripe\stripePaymentController;
use App\Http\Controllers\payment\sslcommerz\SslCommerzPaymentController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\vatController;
use App\Http\Controllers\frontend\HomeController as home;
use App\Http\Controllers\OfferbannerController;
use App\Http\Controllers\PosController;

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

require __DIR__.'/auth.php';



Route::get('device_access_check', [LoginCheckController::class, 'index']);


Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth'], function () {


    Route::get('device_access_check/list', [LoginCheckController::class, 'logedList'])->name('device_access_check.list');
    Route::get('device_access_check/{device}', [LoginCheckController::class, 'view'])->name('device_access_check.view');
    Route::get('device_access_check/status/update', [LoginCheckController::class, 'status'])->name('device_access_check.status');
    Route::get('revoke_notification_data', [LoginCheckController::class, 'revokeNotifi'])->name('revoke_notification_data');


    Route::resource('settings/payment-configuration', PaymentCredentialController::class)->names('settings.payment-configration');

    Route::post('fcm_notification/test', [PushNotificationController::class, 'sendNotification'])->name('sendNotification');
    Route::post('fcm_notification/subscribe/', [PushNotificationController::class, 'subscribe'])->name('fcm_notification.subscribe');

    Route::get('fcm_notification', [PushNotificationController::class, 'index'])->name('fcm_notification.index');
    Route::post('fcm_notification', [PushNotificationController::class, 'store'])->name('fcm_notification.store');


    Route::resource('message', MessageController::class)->names('message');
    Route::get('message/thread/message', [MessageController::class, 'get_message'])->name('thread.get_message');
    Route::get('message/thread/users', [MessageController::class, 'thread_users'])->name('thread.index');
    Route::get('message/thread/user_filter', [MessageController::class, 'thread_user_filter'])->name('message.user.filter');
    Route::get('message/thread/create', [MessageController::class, 'thread_create'])->name('message.thread.create');



    Route::get('message/get_message/data', [MessageController::class, 'get_message'])->name('message.get_message');


    Route::get('/', [dashboardController::class, 'index'])->name('index');
    Route::get('/dashboard', [dashboardController::class, 'index'])->name('dashboard');
    Route::get('/home', [dashboardController::class, 'index'])->name('home');


    Route::get('/items_load_card', [dashboardController::class, 'items_load_card'])->name('items_load_card');

    // permission management
    Route::resource('/permission', PermissionController::class)->middleware('can:role read')->names('permission');
    Route::get('/permission/delete/{id}', [PermissionController::class, 'delete'])->name('permission.delete');

    // branch management
    Route::resource('/branch', BranchController::class)->middleware('can:branch read')->names('branch');
    Route::get('/branch/delete/{id}', [BranchController::class, 'delete'])->name('branch.delete');
    Route::get('/branch/getbranch/get', [BranchController::class, 'getbranchs'])->name('branch.select');


    // cashcounter management
    Route::resource('/cashcounter', CashCounterController::class)->middleware('can:cashcounter read')->names('cashcounter');
    Route::get('/cashcounter/delete/{id}', [CashCounterController::class, 'delete'])->name('cashcounter.delete');
    Route::get('/cashcounter/getcashcounter/get', [CashCounterController::class, 'getcashcounters'])->name('cashcounter.select');


    // Setting
    Route::get('/settings/{slug}/{key}', [SettingController::class, 'index'])->name('setting.index');
    Route::get('/settings/{slug}/{key}/group', [SettingController::class, 'index_group'])->name('setting.index_group');


    // User management
    Route::resource('/user', userController::class)->names('user');
    Route::post('/user/{user}/role_assign', [userController::class, 'assingRole'])->name('user.assingRole');
    Route::get('/user/{user}/role/edit', [userController::class, 'userroleedit'])->name('user.role.edit');
    Route::get('/user/delete/{user}', [userController::class, 'delete'])->name('user.delete');


    // Commision Agent Route
    Route::get('/CommisionAgent', [CommisionAgentController::class, 'index'])->name('CommisionAgent.index');

    // Category management
    Route::resource('/category', CategoryController::class)->names('category');
    Route::get('/category/delete/{category}', [CategoryController::class, 'delete'])->name('category.delete');
    Route::get('/category/getCategory/get', [CategoryController::class, 'getCategory'])->name('category.select');

    // subcategory management
    Route::resource('/subcategory', SubCategoryController::class)->names('subcategory');
    Route::get('/subcategory/delete/{subcategory}', [SubCategoryController::class, 'delete'])->name('subcategory.delete');
    Route::get('/subcategory/subcategory/get', [SubCategoryController::class, 'getsubcategory'])->name('subcategory.select');


    // Area management
    Route::resource('/area', AreaController::class)->names('area');
    Route::get('/area/delete/{area}', [AreaController::class, 'delete'])->name('area.delete');
    Route::get('/area/getArea/get', [AreaController::class, 'getAreas'])->name('area.select');

    // Vat management
    Route::resource('/vat', vatController::class)->names('vat');
    Route::get('/vat/delete/{vat}', [vatController::class, 'delete'])->name('vat.delete');
    Route::get('/vat/getvat/get', [vatController::class, 'getVats'])->name('vat.select');


    // Discount management
    Route::resource('/discount', discountController::class)->names('discount');
    Route::get('/discount/delete/{vat}', [discountController::class, 'delete'])->name('discount.delete');
    Route::get('/discount/getdiscount/get', [discountController::class, 'getDiscounts'])->name('discount.select');



    // brand management
    Route::resource('/brand', BrandController::class)->names('brand');
    Route::get('/brand/delete/{brand}', [BrandController::class, 'delete'])->name('brand.delete');
    Route::get('/brand/getBrands/get', [BrandController::class, 'getBrands'])->name('brand.select');

    // supplier management
    Route::resource('/supplier', SupplierController::class)->names('supplier');
    Route::get('/supplier/delete/{supplier}', [SupplierController::class, 'delete'])->name('supplier.delete');
    Route::get('/supplier/getSupplier/get', [SupplierController::class, 'getSupplier'])->name('supplier.select');

    // supplier management
    Route::resource('/customer', CustomerController::class)->names('customer');
    Route::get('/customer/delete/{customer}', [CustomerController::class, 'delete'])->name('customer.delete');
    Route::get('/customer/getCustomer/get', [CustomerController::class, 'getCustomer'])->name('customer.select');

    //  management
    Route::resource('/unit', UnitController::class)->names('unit');
    Route::get('/unit/delete/{unit}', [UnitController::class, 'delete'])->name('unit.delete');
    Route::get('/unit/getUnit/get', [UnitController::class, 'getUnit'])->name('unit.select');

    //  product
    Route::resource('/product', ProductController::class)->names('product');
    Route::get('/product/delete/{product}', [ProductController::class, 'delete'])->name('product.delete');
    Route::get('/product/getProduct/get', [ProductController::class, 'getProduct'])->name('product.select');
    Route::get('/product/single_filter/get', [ProductController::class, 'single_filter'])->name('product.single_filter');
    Route::get('/product/productByID/{product}', [ProductController::class, 'productByID'])->name('product.productByID');


    //  purchase
    Route::resource('/purchase', PurchaseController::class)->names('purchase');
    Route::get('/purchase/delete/{purchase}', [PurchaseController::class, 'delete'])->name('purchase.delete');
    Route::get('/purchase/getPurchase/get', [PurchaseController::class, 'getPurchase'])->name('purchase.select');
    Route::get('/purchase/filter_purchase/get', [PurchaseController::class, 'filterPurchase'])->name('product.filter_purchase');


    //  purchase
    Route::resource('/offerbanner', OfferbannerController::class)->names('offerbanner');
    Route::get('/purchase/delete/{offerbanner}', [OfferbannerController::class, 'delete'])->name('offerbanner.delete');
    Route::get('/purchase/getPurchase/get', [OfferbannerController::class, 'getofferbanner'])->name('offerbanner.select');



    //  Order
    Route::resource('/order', OrderController::class)->names('order');
    Route::get('/order/delete/{order}', [OrderController::class, 'delete'])->name('order.delete');
    // Route::get('/order/getOrder/get', [OrderController::class, 'getOrder'])->name('order.select');

    //pos
    Route::resource('/pos', PosController::class)->names('pos');

    // unit purchase
    Route::get('/stock', [StockManagementController::class, 'index'])->name('stock.index');
    Route::get('/stockalert', [StockManagementController::class, 'stockalert'])->name('stock.stockalert');


    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::get('/profile/edit_info', [ProfileController::class, 'info_edit'])->name('profile.edit.info');
    Route::get('/profile/password', [ProfileController::class, 'password_edit'])->name('profile.edit.password');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');



    Route::any('/backup', [BackupController::class, 'createBackup']);


});





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
