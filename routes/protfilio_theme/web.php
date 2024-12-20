<?php


// Route::get('/', function () {
//     return view('welcome');
// });

use App\Http\Controllers\protfilio_theme\ClientController;
use App\Http\Controllers\protfilio_theme\ContactController;
use App\Http\Controllers\protfilio_theme\FaqController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\protfilio_theme\HomeController;
use App\Http\Controllers\protfilio_theme\ServiceController;
use App\Http\Controllers\protfilio_theme\TeamController;
use App\Http\Controllers\ReviewProductController;

Route::get('/services', [ServiceController::class, 'index'])->name('service.index');
Route::get('/service/{slug}/', [ServiceController::class, 'show'])->name('service.view');

Route::get('/client', [ClientController::class, 'index'])->name('client.index');
Route::get('/client/{slug}/', [ClientController::class, 'show'])->name('client.view');



Route::get('/contact', [ContactController::class, 'index'])->name('contact.index');
Route::post('/contact', [ContactController::class, 'store'])->name('contact.store');

Route::get('/team', [TeamController::class, 'index'])->name('team.index');
Route::get('/team/{slug}/', [TeamController::class, 'show'])->name('team.view');




// Route::get('/blog', [HomeController::class, 'blog'])->name('blog.index');
// Route::get('/faq', [FaqController::class, 'index'])->name('faq.index');



// Route::get('/', [HomeController::class, 'index']);
// Route::get('/filter', [HomeController::class, 'filter'])->name('filter');
Route::get('/product/quickview', [HomeController::class, 'quickview'])->name('product.quickview');

// feature product view for homepage
Route::get('/product/feature_view', [HomeController::class, 'feature_view'])->name('product.feature_view');
Route::get('/product/popular_view', [HomeController::class, 'popular_view'])->name('product.popular_view');
Route::get('/product/recommend_view', [HomeController::class, 'recommend_view'])->name('product.recommend_view');
Route::get('/product/recent_view', [HomeController::class, 'recent_view'])->name('product.recent_view');


Route::get('/about', [HomeController::class, 'about']);
Route::get('filter/data-get', [HomeController::class, 'filter_get']);






Route::get('add_to_cart', [HomeController::class, 'add_to_cart'])->name('add_to_cart');
Route::get('cart_details', [HomeController::class, 'cart_details'])->name('cart_details');

Route::get('cart_and_wishlist', [HomeController::class, 'cart_and_wishlist'])->name('cart_and_wishlist');
Route::get('side_cart_info', [HomeController::class, 'side_cart_info'])->name('side_cart_info');

Route::get('add_to_compareList', [HomeController::class, 'add_to_compareList'])->name('add_to_compareList');



Route::post('/pos/salse/partner', [HomeController::class, 'sales_partner_store'])->name('sales_partner_store');



Route::resource('review', ReviewProductController::class)->names('review');



// User Defined Route Web So Check Route not exists
Route::get('{view}', [HomeController::class, 'index'])->name('home')->where('view', '^.*');
