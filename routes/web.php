<?php

use App\Http\Controllers\BrandController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\userController;
use Database\Seeders\DatabaseSeeder;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\dashboardController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\StockManagementController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\UnitController;

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
    toastr()->success('Successfully migrated', 'Congrats');
    return back();
});
Route::get('/migrate/seed', function(){
    $db_seeder = new DatabaseSeeder;
    $db_seeder->run();
    toastr()->success('Successfully seed', 'Congrats');
    return back();
});





Route::get('/', function () {
    return redirect('admin');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');





require __DIR__.'/auth.php';





Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth'], function () {
    Route::get('/', [dashboardController::class, 'index'])->name('index');
    Route::get('/dashboard', [dashboardController::class, 'index'])->name('dashboard');
    Route::get('/home', [dashboardController::class, 'index'])->name('home');

    // permission management
    Route::resource('/permission', PermissionController::class)->middleware('')->names('permission');
    Route::resource('/permission', PermissionController::class)->middleware('can:role read')->names('permission');
    Route::get('/permission/delete/{id}', [PermissionController::class, 'delete'])->name('permission.delete');


    // Setting
    Route::get('/settings/{slug}/{key}', [SettingController::class, 'index'])->name('setting.index');
    Route::get('/settings/{slug}/{key}/group', [SettingController::class, 'index_group'])->name('setting.index_group');


    // User management
    Route::resource('/user', userController::class)->names('user');
    Route::post('/user/{user}/role_assign', [userController::class, 'assingRole'])->name('user.assingRole');
    Route::get('/user/{user}/role/edit', [userController::class, 'userroleedit'])->name('user.role.edit');
    Route::get('/user/delete/{user}', [userController::class, 'delete'])->name('user.delete');


    // Category management
    Route::resource('/category', CategoryController::class)->names('category');
    Route::get('/category/delete/{category}', [CategoryController::class, 'delete'])->name('category.delete');
    Route::get('/category/getCategory/get', [CategoryController::class, 'getCategory'])->name('category.select');


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


    //  purchase
    Route::resource('/purchase', PurchaseController::class)->names('purchase');
    Route::get('/purchase/delete/{purchase}', [PurchaseController::class, 'delete'])->name('purchase.delete');
    Route::get('/purchase/getPurchase/get', [PurchaseController::class, 'getPurchase'])->name('purchase.select');


    //  Order
    Route::resource('/order', OrderController::class)->names('order');
    Route::get('/order/delete/{order}', [OrderController::class, 'delete'])->name('order.delete');
    // Route::get('/order/getOrder/get', [OrderController::class, 'getOrder'])->name('order.select');


    // unit purchase
    Route::get('/stock', [StockManagementController::class, 'index'])->name('stock.index');
    Route::get('/stockalert', [StockManagementController::class, 'stockalert'])->name('stock.stockalert');


    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::get('/profile/edit_info', [ProfileController::class, 'info_edit'])->name('profile.edit.info');
    Route::get('/profile/password', [ProfileController::class, 'password_edit'])->name('profile.edit.password');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');


});





Route::any('setting-store-update', [SettingController::class, 'store'])->name('setting.store.update');

