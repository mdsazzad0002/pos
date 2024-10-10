<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\crm\LeadController;
use App\Http\Controllers\crm\LeadDealController;
use App\Http\Controllers\crm\LeadSourceController;
use App\Http\Controllers\crm\LeadAccountController;
use App\Http\Controllers\crm\LeadContactController;
use App\Http\Controllers\crm\LeadDealStageController;


/*
|--------------------------------------------------------------------------
| Crm Routes
|--------------------------------------------------------------------------
|
| Here is where you can register Crm routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/




Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth'], function () {
    // Lead Crm management
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
});
