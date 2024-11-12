<?php

use App\Http\Controllers\HeaderController;
use App\Http\Controllers\protfilio_theme_admin\FaqController;
use App\Http\Controllers\protfilio_theme_admin\FooterLinkHeadingController;
use App\Http\Controllers\protfilio_theme_admin\FooterLinkSubHeadingController;
use App\Http\Controllers\protfilio_theme_admin\HomePageManageController;
use App\Http\Controllers\protfilio_theme_admin\PageController;
use App\Http\Controllers\protfilio_theme_admin\ServiceController;
use App\Http\Controllers\protfilio_theme_admin\SliderController;
use App\Http\Controllers\protfilio_theme_admin\TestimonialController;
use App\Http\Controllers\protfilio_theme_admin\VarinatSuggessionController;
use Illuminate\Support\Facades\Route;

// page
Route::resource('page', PageController::class)->names('page');
Route::get('/page/delete/{page}', [PageController::class, 'delete'])->name('page.delete');
Route::get('/page/getPage/get', [PageController::class, 'getPage'])->name('page.select');
Route::post('/page/edit_builder/update_data', [PageController::class, 'edit_builder_update'])->name('page.edit_builder_update');




// homepagemanage it's allover pagecontrol
Route::resource('homePageManage', HomePageManageController::class)->names('homePageManage');
Route::get('/homePageManage/delete/{homePageManage}', [HomePageManageController::class, 'delete'])->name('homePageManage.delete');
Route::get('/homePageManage/homePageManage/get', [HomePageManageController::class, 'homePageManage'])->name('homePageManage.select');


Route::get('/VarinatSuggession/VarinatSuggession/get', [VarinatSuggessionController::class, 'VarinatSuggession'])->name('VarinatSuggession.select');


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


Route::get('/header', [HeaderController::class, 'index'])->name('header.index');
Route::get('/header/view', [HeaderController::class, 'view'])->name('header.view');
Route::post('/header/store', [HeaderController::class, 'store'])->name('header.store');

Route::put('/header/{header_item}/update', [HeaderController::class, 'update'])->name('header.update');

Route::post('/header/delete', [HeaderController::class, 'destroy'])->name('header.delete');

Route::get('/header/{header_item}/edit', [HeaderController::class, 'edit'])->name('header.edit');

