<?php

use App\Http\Controllers\protfilio_theme_admin\ServiceController;
use App\Http\Controllers\protfilio_theme_admin\SliderController;
use App\Http\Controllers\protfilio_theme_admin\TestimonialController;
use Illuminate\Support\Facades\Route;

// Slider
Route::resource('slider', SliderController::class)->names('slider');
Route::get('/slider/delete/{slider}', [SliderController::class, 'delete'])->name('slider.delete');
Route::get('/brand/getSliders/get', [SliderController::class, 'getSlider'])->name('slider.select');


// Service
Route::resource('service', ServiceController::class)->names('service');
Route::get('/service/delete/{service}', [serviceController::class, 'delete'])->name('service.delete');
Route::get('/brand/getservices/get', [serviceController::class, 'getservice'])->name('service.select');


// Testimonial
Route::resource('testimonial', TestimonialController::class)->names('testimonial');
Route::get('/testimonial/delete/{testimonial}', [TestimonialController::class, 'delete'])->name('testimonial.delete');
Route::get('/brand/getTesimonials/get', [TestimonialController::class, 'getTestimonial'])->name('testimonial.select');


