<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\mail\MailSettingController;
use App\Http\Controllers\mail\MailTemplateController;


/*
|--------------------------------------------------------------------------
| Mail Routes
|--------------------------------------------------------------------------
|
| Here is where you can register Mail routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/



Route::group(['as' => 'admin.', 'prefix' => 'admin', 'middleware' => 'auth'], function () {
    Route::get('/mail', [MailSettingController::class, 'index'])->name('mail.index');
    Route::post('/mail', [MailSettingController::class, 'store'])->name('mail.store');
    Route::post('/mail/test', [MailSettingController::class, 'testMail'])->name('mail.test');

    Route::put('/mail/template/{mailTemplate}', [MailTemplateController::class, 'update'])->name('mail.update');



});



