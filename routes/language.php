<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\language\LanguageController;
use App\Http\Controllers\language\TranslatorController;


/*
|--------------------------------------------------------------------------
| Language Routes
|--------------------------------------------------------------------------
|
| Here is where you can register Language routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/locale/{lang}', [LanguageController::class, 'switchLanguage']);





Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth'], function () {

    // Language
    Route::resource('language', LanguageController::class)->names('language')->middleware('can:language read');
    Route::get('language/{language}/delete/', [LanguageController::class, 'delete'])->name('language.delete');
    Route::get('language/getLeadSource/get', [LanguageController::class, 'getlanguage'])->name('language.select');



    // Translate
    Route::resource('Translation', TranslatorController::class)->names('Translation')->middleware('can:Translation read');
    Route::get('Translation/{Translation}/delete/', [TranslatorController::class, 'delete'])->name('Translation.delete');
    Route::get('Translation/getTranslation/get', [TranslatorController::class, 'geTranslation'])->name('Translation.select');



});
