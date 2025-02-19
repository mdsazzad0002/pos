<?php

use Database\Seeders\DatabaseSeeder;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\UploadController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\admin\CustomerController;
use App\Http\Controllers\dashboardController;
use App\Http\Controllers\Auth\LoginCheckController;
use App\Http\Controllers\payment\Paypal\PaymentController;
use App\Http\Controllers\payment\amarpay\amarpayController;
use App\Http\Controllers\payment\braintree\BraintreeController;
use App\Http\Controllers\payment\stripe\stripePaymentController;
use App\Http\Controllers\payment\sslcommerz\SslCommerzPaymentController;
use App\Http\Controllers\VatController as vatController;
use App\Http\Controllers\frontend\HomeController as home;
use App\Http\Controllers\OfferbannerController;
use App\Http\Controllers\PosController;


use App\Models\User;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\protfilio_theme\ClientController;
use App\Http\Controllers\protfilio_theme\ContactController;

use App\Http\Controllers\protfilio_theme\FaqController as frontend_faq;
use App\Http\Controllers\protfilio_theme_admin\FaqController;

use App\Http\Controllers\protfilio_theme\HomeController;
use App\Http\Controllers\protfilio_theme\ServiceController;
use App\Http\Controllers\protfilio_theme_admin\ServiceController as  AdminServiceController;
use App\Http\Controllers\protfilio_theme\TeamController;
use App\Http\Controllers\ReviewProductController;
use App\Http\Controllers\AreaController;
use App\Http\Controllers\UnitController;
use App\Http\Controllers\BrandController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\BranchController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\CashCounterController;
use App\Http\Controllers\SubCategoryController;
use App\Http\Controllers\CommisionAgentController;
use App\Http\Controllers\DiscountController as discountController;
use App\Http\Controllers\StockManagementController;
use App\Http\Controllers\PushNotificationController;
use App\Http\Controllers\payment\PaymentCredentialController;
use App\Http\Controllers\HeaderController;
use App\Http\Controllers\language\LanguageController;
use App\Http\Controllers\language\TranslatorController;
use App\Http\Controllers\protfilio_theme_admin\FooterLinkHeadingController;
use App\Http\Controllers\protfilio_theme_admin\FooterLinkSubHeadingController;
use App\Http\Controllers\protfilio_theme_admin\HomePageManageController;
use App\Http\Controllers\protfilio_theme_admin\PageController;
use App\Http\Controllers\protfilio_theme_admin\SliderController;
use App\Http\Controllers\protfilio_theme_admin\TestimonialController;
use App\Http\Controllers\protfilio_theme_admin\VarinatSuggessionController;
use App\Http\Controllers\userController;
use App\Http\Controllers\mail\MailSettingController;
use App\Http\Controllers\mail\MailTemplateController;
use App\Http\Controllers\crm\LeadController;
use App\Http\Controllers\crm\LeadDealController;
use App\Http\Controllers\crm\LeadSourceController;
use App\Http\Controllers\crm\LeadAccountController;
use App\Http\Controllers\crm\LeadContactController;
use App\Http\Controllers\crm\LeadDealStageController;
use App\Http\Controllers\courier\bdcourier\trackingController;
use App\Http\Controllers\courier\CourierCredentialController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Auth\ConfirmablePasswordController;
use App\Http\Controllers\Auth\EmailVerificationNotificationController;
use App\Http\Controllers\Auth\EmailVerificationPromptController;
use App\Http\Controllers\Auth\NewPasswordController;
use App\Http\Controllers\Auth\PasswordController;
use App\Http\Controllers\Auth\PasswordResetLinkController;
use App\Http\Controllers\Auth\VerifyEmailController;
use App\Http\Controllers\TrackingOrderController;
use App\Http\Controllers\MaintainController;
use App\Http\Controllers\AddressController;



use App\Http\Controllers\admin\WholeSaleProductTypeController;
use App\Http\Controllers\WholeSaleOrderController;
use App\Http\Controllers\admin\WholeSaleOrderController as AdminWholeSaleOrderController;



use App\Http\Controllers\admin\dashboardController as AdminDashboardController;
use App\Http\Controllers\FooterStyleController;

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



// Route::get('latest_order', [AdminDashboardController::class, 'latest_order'])->name('latest_order');
// Route::get('latest_customer', [AdminDashboardController::class, 'latest_customer'])->name('latest_customer');
// Route::get('recent_product', [AdminDashboardController::class, 'recent_product'])->name('recent_product');






Route::get('bdcouriertracking', [trackingController::class, 'tracking'])->name('tracking');
Route::get('admin/settings/courier', [CourierCredentialController::class, 'index'])->name('admin.settings.courier-configration.index');
Route::put('admin/settings/courier/{courier_configuration}/update', [CourierCredentialController::class, 'update'])->name('admin.settings.courier-configration.update');









// Web Route
Route::get('test_login', function(){
    $userTEst = User::first();
    Auth::guard('web')->login($userTEst);
   return redirect('admin/dashboard');
});



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

// Route::get('fresh', function () {
//     Artisan::call('migrate:fresh --seed');
//     return back();
// });


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

Route::put('user/customer-customerUpdate/{customer}',[App\Http\Controllers\CustomerController::class, 'customerUpdate'])->name('customerUpdate');


Route::get('user/google/redirect', [App\Http\Controllers\GoogleLoginController::class, 'redirectToGoogle'])->name('google.redirect');
Route::get('user/google/callback', [App\Http\Controllers\GoogleLoginController::class, 'handleGoogleCallback'])->name('google.callback');

Route::get('user/facebook/redirect', [App\Http\Controllers\GoogleLoginController::class, 'redirectToFacebook'])->name('facebook.redirect');
Route::get('user/facebook/callback', [App\Http\Controllers\GoogleLoginController::class, 'handleFacebookCallback'])->name('facebook.callback');


// Route::get('auth/google', [CustomerController::class, 'redirectToGoogle']);
// Route::get('auth/google/callback', [CustomerController::class, 'handleGoogleCallback']);



Route::get('device_access_check', [LoginCheckController::class, 'index']);





Route::any('setting-store-update', [SettingController::class, 'store'])->name('setting.store.update');




Route::get('/checkout/payment', [PaymentCredentialController::class, 'payment'])->name('payment');

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




// end Web route






//custom order

Route::post('bluk-order/store',[WholeSaleOrderController::class, 'blukOderStore'])->name('bluk.order.store');



















Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth'], function(){

        // page
        Route::resource('page', PageController::class)->names('page');
        Route::get('/page/delete/{page}', [PageController::class, 'delete'])->name('page.delete');
        Route::get('/page/getPage/get', [PageController::class, 'getPage'])->name('page.select');
        Route::post('/page/edit_builder/update_data', [PageController::class, 'edit_builder_update'])->name('page.edit_builder_update');




        // homepagemanage it's allover pagecontrol
        Route::resource('homePageManage', HomePageManageController::class)->names('homePageManage');
        Route::get('/homePageManage/homePageManage/get', [HomePageManageController::class, 'homePageManage'])->name('homePageManage.select');


        Route::get('/VarinatSuggession/VarinatSuggession/get', [VarinatSuggessionController::class, 'VarinatSuggession'])->name('VarinatSuggession.select');


        // Slider
        Route::resource('slider', SliderController::class)->names('slider');
        Route::get('/slider/delete/{slider}', [SliderController::class, 'delete'])->name('slider.delete');
        Route::get('/brand/getSliders/get', [SliderController::class, 'getSlider'])->name('slider.select');


        // Service
        Route::resource('service', AdminServiceController::class)->names('service');
        Route::get('/service/delete/{service}', [AdminServiceController::class, 'delete'])->name('service.delete');
        Route::get('/brand/getservices/get', [AdminServiceController::class, 'getservice'])->name('service.select');


        // Testimonial
        Route::resource('testimonial', TestimonialController::class)->names('testimonial');
        Route::get('/testimonial/delete/{testimonial}', [TestimonialController::class, 'delete'])->name('testimonial.delete');
        Route::get('/brand/getTesimonials/get', [TestimonialController::class, 'getTestimonial'])->name('testimonial.select');


        // faq
        Route::resource('faq', FaqController::class)->names('faq');
        Route::get('/faq/delete/{faq}', [FaqController::class, 'delete'])->name('faq.delete');
        Route::get('/brand/getfaq/get', [FaqController::class, 'getFaq'])->name('faq.select');


        Route::get('/header', [HeaderController::class, 'index'])->name('header.index');
        Route::get('/header/view', [HeaderController::class, 'view'])->name('header.view');
        Route::post('/header/store', [HeaderController::class, 'store'])->name('header.store');

        Route::put('/header/{header_item}/update', [HeaderController::class, 'update'])->name('header.update');

        Route::post('/header/delete', [HeaderController::class, 'destroy'])->name('header.delete');

        Route::get('/header/{header_item}/edit', [HeaderController::class, 'edit'])->name('header.edit');


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


        //  management
        Route::resource('/unit', UnitController::class)->names('unit');
        Route::get('/unit/delete/{unit}', [UnitController::class, 'delete'])->name('unit.delete');
        Route::get('/unit/getUnit/get', [UnitController::class, 'getUnit'])->name('unit.select');






        //  purchase
        Route::resource('/offerbanner', OfferbannerController::class)->names('offerbanner');
        Route::get('/offerbanner/delete/{offerbanner}', [OfferbannerController::class, 'delete'])->name('offerbanner.delete');
        Route::get('/offerbanner/getofferbanner/get', [OfferbannerController::class, 'getofferbanner'])->name('offerbanner.select');



        //  Order
        Route::resource('/order', OrderController::class)->names('order');
        Route::get('/order/delete/{order}', [OrderController::class, 'delete'])->name('order.delete');
        Route::get('/order/update_status/{order}', [OrderController::class, 'update_status'])->name('order.update_status');
        Route::post('/order/update_status/{order}', [OrderController::class, 'update_status_post'])->name('order.update_status_post');
        // Route::get('/order/getOrder/get', [OrderController::class, 'getOrder'])->name('order.select');

        //pos
        Route::resource('/pos', PosController::class)->names('pos');


        //bluk order
        Route::get('/bluk/order', [AdminWholeSaleOrderController::class, 'blukOrder'])->name('bluk.order');
        Route::delete('/bluk/order/{order}', [AdminWholeSaleOrderController::class, 'destroy']);
        Route::get('/bluk/order/{order}/delete', [AdminWholeSaleOrderController::class, 'delete'])->name('bluk.order.delete');
        //custom order
        Route::get('/custom/order', [AdminWholeSaleOrderController::class, 'customOrder'])->name('custom.order');

        // unit purchase
        Route::get('/stock', [StockManagementController::class, 'index'])->name('stock.index');
        Route::get('/stockalert', [StockManagementController::class, 'stockalert'])->name('stock.stockalert');


        Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
        Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
        Route::get('/profile/edit_info', [ProfileController::class, 'info_edit'])->name('profile.edit.info');
        Route::get('/profile/password', [ProfileController::class, 'password_edit'])->name('profile.edit.password');
        Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');


        //whole sele product type
        Route::resource('whole/sale/wholeSaleProductType',WholeSaleProductTypeController::class)->names('whole.sele');
        Route::get('whole/sale/wholeSaleProductType/{wholeSaleProductType}/delete/', [WholeSaleProductTypeController::class, 'delete'])->name('whole.sele.delete');



        Route::any('/backup', [BackupController::class, 'createBackup']);



        Route::get('/mail', [MailSettingController::class, 'index'])->name('mail.index');
        Route::post('/mail', [MailSettingController::class, 'store'])->name('mail.store');
        Route::post('/mail/test', [MailSettingController::class, 'testMail'])->name('mail.test');

        Route::put('/mail/template/{mailTemplate}', [MailTemplateController::class, 'update'])->name('mail.update');






    // Language
    Route::resource('language', LanguageController::class)->names('language')->middleware('can:language read');
    Route::get('language/{language}/delete/', [LanguageController::class, 'delete'])->name('language.delete');
    Route::get('language/getLeadSource/get', [LanguageController::class, 'getlanguage'])->name('language.select');



    // Translate
    Route::resource('Translation', TranslatorController::class)->names('Translation')->middleware('can:Translation read');
    Route::get('Translation/{Translation}/delete/', [TranslatorController::class, 'delete'])->name('Translation.delete');
    Route::get('Translation/getTranslation/get', [TranslatorController::class, 'geTranslation'])->name('Translation.select');





    Route::prefix('crm')->group(function () {
        //Lead Contact
        Route::resource('LeadContact', LeadContactController::class)->names('LeadContact')->middleware('can:LeadContact read');
        ;
        Route::get('LeadContact/delete/{LeadContact}', [LeadContactController::class, 'delete'])->name('LeadContact.delete');
        Route::get('getLeadContact/get', [LeadContactController::class, 'getLeadContact'])->name('LeadContact.select');

        // Lead Account
        Route::resource('LeadAccount', LeadAccountController::class)->names('LeadAccount')->middleware('can:LeadAccount read');
        Route::get('LeadAccount/{LeadAccount}/delete/', [LeadAccountController::class, 'delete'])->name('LeadAccount.delete');
        Route::get('getLeadAccount/get', [LeadAccountController::class, 'getLeadAccount'])->name('LeadAccount.select');

        // Lead LeadSource
        Route::resource('LeadSource', LeadSourceController::class)->names('LeadSource')->middleware('can:LeadSource read');
        Route::get('LeadSource/{LeadSource}/delete/', [LeadSourceController::class, 'delete'])->name('LeadSource.delete');
        Route::get('getLeadSource/get', [LeadSourceController::class, 'getLeadSource'])->name('LeadSource.select');

        // Lead LeadDeal
        Route::resource('LeadDeal', LeadDealController::class)->names('LeadDeal')->middleware('can:LeadDeal read');
        Route::get('LeadDeal/{LeadDeal}/delete/', [LeadDealController::class, 'delete'])->name('LeadDeal.delete');
        Route::get('getLeadDeal/get', [LeadDealController::class, 'getLeadDeal'])->name('LeadDeal.select');

        // Lead Lead
        Route::resource('Lead', LeadController::class)->names('Lead')->middleware('can:Lead read');
        Route::get('Lead/{Lead}/delete/', [LeadController::class, 'delete'])->name('Lead.delete');
        Route::get('getLead/get', [LeadController::class, 'getLead'])->name('Lead.select');

        // Lead LeadDealStage
        Route::resource('LeadDealStage', LeadDealStageController::class)->names('LeadDealStage')->middleware('can:LeadDealStage read');
        Route::get('LeadDealStage/{LeadDealStage}/delete/', [LeadDealStageController::class, 'delete'])->name('LeadDealStage.delete');
        Route::get('getLeadDealStage/get', [LeadDealStageController::class, 'getLeadDealStage'])->name('LeadDealStage.select');


    });


    Route::get('database/backup', [SettingController::class, 'downloadBackup'])->name('database.backup');


    // Maintanance Mode
    Route::any('maintanance', [MaintainController::class, 'index'])->name('maintanance');
    Route::any('maintanance/update', [MaintainController::class, 'update'])->name('maintanance.update');


});


Route::get('/locale/{lang}', [LanguageController::class, 'switchLanguage']);





Route::middleware(['guest', 'web'])->group(function () {


    Route::get('login', [AuthenticatedSessionController::class, 'create'])
                ->name('login');



    Route::post('login', [AuthenticatedSessionController::class, 'store']);

    Route::get('forgot-password', [PasswordResetLinkController::class, 'create'])
                ->name('password.request');

    Route::post('forgot-password', [PasswordResetLinkController::class, 'store'])
                ->name('password.email');

    Route::get('reset-password/{token}', [NewPasswordController::class, 'create'])
                ->name('password.reset');

    Route::post('reset-password', [NewPasswordController::class, 'store'])
                ->name('password.store');
});

Route::middleware('auth')->group(function () {
    Route::get('verify-email', EmailVerificationPromptController::class)
                ->name('verification.notice');

    Route::get('verify-email/{id}/{hash}', VerifyEmailController::class)
                ->middleware(['signed', 'throttle:6,1'])
                ->name('verification.verify');

    Route::post('email/verification-notification', [EmailVerificationNotificationController::class, 'store'])
                ->middleware('throttle:6,1')
                ->name('verification.send');

    Route::get('confirm-password', [ConfirmablePasswordController::class, 'show'])
                ->name('password.confirm');

    Route::post('confirm-password', [ConfirmablePasswordController::class, 'store']);

    Route::put('password', [PasswordController::class, 'update'])->name('password.update');

    Route::post('logout', [AuthenticatedSessionController::class, 'destroy'])
                ->name('logout');
});








// protflio_web_theme


Route::get('/services', [ServiceController::class, 'index'])->name('service.index');
Route::get('/service/{slug}/', [ServiceController::class, 'show'])->name('service.view');

Route::get('/client', [ClientController::class, 'index'])->name('client.index');
Route::get('/client/{slug}/', [ClientController::class, 'show'])->name('client.view');



// Route::get('/contact', [ContactController::class, 'index'])->name('contact.index');
Route::post('/contact', [ContactController::class, 'store'])->name('contact.store');

Route::get('/team', [TeamController::class, 'index'])->name('team.index');
Route::get('/team/{slug}/', [TeamController::class, 'show'])->name('team.view');



Route::get('tracking_order', [TrackingOrderController::class, 'index'])->name('tracking_order.index');


Route::get('/about', [HomeController::class, 'about']);
Route::get('filter/data-get', [HomeController::class, 'filter_get']);






Route::get('add_to_cart', [HomeController::class, 'add_to_cart'])->name('add_to_cart');
Route::get('cart_details', [HomeController::class, 'cart_details'])->name('cart_details');
Route::post('checkout', [HomeController::class, 'checkout'])->name('checkout');

Route::get('cart_and_wishlist', [HomeController::class, 'cart_and_wishlist'])->name('cart_and_wishlist');
Route::get('side_cart_info', [HomeController::class, 'side_cart_info'])->name('side_cart_info');

Route::get('add_to_compareList', [HomeController::class, 'add_to_compareList'])->name('add_to_compareList');
Route::get('compare_list', [HomeController::class, 'compare_list'])->name('compare_list');



Route::post('/pos/salse/partner', [HomeController::class, 'sales_partner_store'])->name('sales_partner_store');



Route::resource('review', ReviewProductController::class)->names('review');





// Product management
Route::group(['as' => 'product.', 'prefix' => 'product'], function(){
    // frontend
    Route::get('/feature_view', [HomeController::class, 'feature_view'])->name('feature_view');
    Route::get('/popular_view', [HomeController::class, 'popular_view'])->name('popular_view');
    Route::get('/recommend_view', [HomeController::class, 'recommend_view'])->name('recommend_view');
    Route::get('/recent_view', [HomeController::class, 'recent_view'])->name('recent_view');
    Route::get('/quickview', [HomeController::class, 'quickview'])->name('quickview');
    Route::get('/product_category_wise', [HomeController::class, 'product_category_wise'])->name('category_wise');
    Route::get('/random_wise_product_category_wise', [HomeController::class, 'random_wise_product_category_wise'])->name('random_wise_product_category_wise');
});



// ============================== Admin Management ===================================== Admin Management =================
Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth'], function() {
    
// ============================= Management AND Function ======================= Management AND Function =========================
// ============================= Management AND Function ======================= Management AND Function =========================
// ============================= Management AND Function ======================= Management AND Function =========================

    // Admin
    // product Management
    Route::resource('/product', ProductController::class)->names('product'); // Use an empty string here

    Route::group(['as' => 'product.', 'prefix' => 'product'], function() {
        Route::get('/delete/{product}', [ProductController::class, 'delete'])->name('delete');

        Route::get('/getProduct/get', [ProductController::class, 'getProduct'])->name('select');
        Route::get('/product_variant/get', [ProductController::class, 'product_variant'])->name('variant.select');

        Route::get('/single_filter/get', [ProductController::class, 'single_filter'])->name('single_filter');
        Route::get('/productByID/{product}', [ProductController::class, 'productByID'])->name('productByID');

        Route::get('/barcode/{id}', [ProductController::class, 'barcode'])->name('barcode');
        Route::get('/barcode/barcodeGenerate/single', [ProductController::class, 'barcodeGenerate'])->name('barcode.generate');

        Route::get('/filter_purchase/get', [ProductController::class, 'filterPurchase'])->name('filter_purchase');

    });
    // End product Management

    
    // Admin
    // Area Management
    Route::resource('/area', AreaController::class)->names('area');
    Route::group(['as' => 'area.', 'prefix' => 'supplier'], function() {
        Route::get('/delete/{area}', [AreaController::class, 'delete'])->name('delete');
        Route::get('/getArea/get', [AreaController::class, 'getAreas'])->name('select');
    });
    // End Area Management


    
    // Admin
    // Purchase Management
    Route::resource('/purchase', PurchaseController::class)->names('purchase');
    Route::group(['as' => 'purchase.', 'prefix' => 'purchase'], function() {
        Route::get('/delete/{purchase}', [PurchaseController::class, 'delete'])->name('delete');
        Route::get('/getPurchase/get', [PurchaseController::class, 'getPurchase'])->name('select');
        Route::get('/single/purchase_report', [PurchaseController::class, 'report_single'])->name('report_single');
    });


    // Admin
    // Supplier Management
    Route::resource('/supplier', SupplierController::class)->names('supplier');
    Route::group(['as' => 'supplier.', 'prefix' => 'supplier'], function() {
        Route::get('/delete/{supplier}', [SupplierController::class, 'delete'])->name('delete');
        Route::get('/getSupplier/get', [SupplierController::class, 'getSupplier'])->name('select');
    });
    // End Supplier Management


    // Admin
    // Customer Management
    Route::resource('/customer', CustomerController::class)->names('customer');
    Route::group(['as' => 'customer.', 'prefix' => 'customer'], function() {
        Route::get('/delete/{customer}', [CustomerController::class, 'delete'])->name('delete');
        Route::get('/getCustomer/get', [CustomerController::class, 'getCustomer'])->name('select');
    });
    // End Customer Management


// ========================= End Management AND Function =========================== End Management AND Function =================
// ========================= End Management AND Function =========================== End Management AND Function =================
// ========================= End Management AND Function =========================== End Management AND Function =================


// =======================x=x=x=x=x=x=x=x=x=x============ Cross Line ======================x=x=x=x=x======================x=x=x=============


// ================================================= CMS =================================== CMS ==================================
// ================================================= CMS =================================== CMS ==================================
// ================================================= CMS =================================== CMS ==================================

    // Admin
    // footerlinkheading
    Route::resource('footerlinkheading', FooterLinkHeadingController::class)->names('footerlinkheading');
    Route::group(['as' => 'footerlinkheading.', 'prefix' => 'footerlinkheading'], function() {
        Route::get('/delete/{footerlinkheading}', [FooterLinkHeadingController::class, 'delete'])->name('delete');
        Route::get('/getFooterlinkheading/get', [FooterLinkHeadingController::class, 'getFooterlinkheading'])->name('select');  
    });
    // end footerlinkheading


    // Admin
    // footerlinksubheading
    Route::resource('footerlinksubheading', FooterLinkSubHeadingController::class)->names('footerlinksubheading');
    Route::group(['as' => 'footerlinksubheading.', 'prefix' => 'footerlinksubheading'], function() {
        Route::get('/delete/{footerlinksubheading}', [FooterLinkSubHeadingController::class, 'delete'])->name('delete');
        Route::get('/getfooterlinksubheading/get', [FooterLinkSubHeadingController::class, 'getfooterlinksubheading'])->name('select');
    });
    // end Footer Sub Heading

    
    // Admin
    // footer Style Management
    Route::get('footer-style', [FooterStyleController::class, 'index'])->name('footer-style.index');
    // end footer Style Management

    // ======================== END CMS ================== END CMS ================ END CMS ================================================================
    // ======================== END CMS ================== END CMS ================ END CMS ================================================================
    // ======================== END CMS ================== END CMS ================ END CMS ================================================================


});
// End Purchase Management
// ============================== End Admin Management ===================================== End Admin Management =================


















Route::get('/invoice', [HomeController::class, 'order_invoice'])->name('order_invoice');
Route::put('/address/{address}', [AddressController::class, 'update'])->name('address.update');
Route::delete('/address/{address}', [AddressController::class, 'destroy'])->name('address.delete');



Route::get('customer/verify_mail_send', [App\Http\Controllers\CustomerController::class, 'verify_mail_send'])->name('customer.verify_mail_send');
Route::get('customer/verify_mail_verify', [App\Http\Controllers\CustomerController::class, 'verify_mail_verify'])->name('customer.verify');




// Duplicate route helped for seo
Route::get('/product-details/{slug}', [HomeController::class,'product_view_by_slug'])->name('product_view_by_slug');


// User Defined Route Web So Check Route not exists
Route::get('previdw_page_and_fornt_page', [HomeController::class, 'index'])->name('previdw_page_and_fornt_page');
Route::get('{view}', [HomeController::class, 'index'])->middleware('TrackUniqueVisitor')->name('home')-> where('view', '^(?!admin).*');
// end protflio_web_theme









