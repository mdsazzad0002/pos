<?php


// Route::get('/', function () {
//     return view('welcome');
// });

use App\Http\Controllers\protfilio_theme\ContactController;
use App\Http\Controllers\protfilio_theme\FaqController;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\protfilio_theme\HomeController;
use App\Http\Controllers\protfilio_theme\ServiceController;

Route::get('/', [HomeController::class, 'index'])->name('home');


Route::get('/services', [ServiceController::class, 'index'])->name('service.index');
Route::get('/service/{slug}/', [ServiceController::class, 'show'])->name('service.view');



Route::get('/contact', [ContactController::class, 'index'])->name('contact.index');
Route::post('/contact', [ContactController::class, 'store'])->name('contact.store');



Route::get('/blog', [HomeController::class, 'blog'])->name('blog');
Route::get('/faq', [FaqController::class, 'index'])->name('faq');
