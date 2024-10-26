<?php


use App\Http\Controllers\protfilio_theme_admin\FaqController;
use App\Http\Controllers\protfilio_theme_admin\FooterLinkHeadingController;
use App\Http\Controllers\protfilio_theme_admin\FooterLinkSubHeadingController;
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


// footerlinkheading
Route::resource('footerlinkheading', FooterLinkHeadingController::class)->names('footerlinkheading');
Route::get('/footerlinkheading/delete/{footerlinkheading}', [FooterLinkHeadingController::class, 'delete'])->name('footerlinkheading.delete');
Route::get('/brand/getFooterlinkheading/get', [FooterLinkHeadingController::class, 'getFooterlinkheading'])->name('footerlinkheading.select');



// footerlinksubheading
Route::resource('footerlinksubheading', FooterLinkSubHeadingController::class)->names('footerlinksubheading');
Route::get('/footerlinksubheading/delete/{footerlinksubheading}', [FooterLinkSubHeadingController::class, 'delete'])->name('footerlinksubheading.delete');
Route::get('/brand/getfooterlinksubheading/get', [FooterLinkSubHeadingController::class, 'getfooterlinksubheading'])->name('footerlinksubheading.select');


// faq
Route::resource('faq', FaqController::class)->names('faq');
Route::get('/faq/delete/{faq}', [FaqController::class, 'delete'])->name('faq.delete');
Route::get('/brand/getfaq/get', [FaqController::class, 'getFaq'])->name('faq.select');


