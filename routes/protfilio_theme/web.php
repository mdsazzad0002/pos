<?php


// Route::get('/', function () {
//     return view('welcome');
// });

use App\Http\Controllers\protfilio_theme\ContactController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\protfilio_theme\HomeController;
use App\Http\Controllers\protfilio_theme\ServiceController;

Route::get('/', [HomeController::class, 'index'])->name('home');


Route::get('/services', [ServiceController::class, 'index'])->name('service.index');
Route::get('/service/{slug}/', [ServiceController::class, 'show'])->name('service.view');



Route::get('/contact', [ContactController::class, 'contact'])->name('contact');

Route::get('/blog', [HomeController::class, 'blog'])->name('blog');
Route::get('/faq', [HomeController::class, 'faq'])->name('faq');

