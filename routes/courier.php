<?php

use App\Http\Controllers\courier\bdcourier\trackingController;
use App\Http\Controllers\courier\CourierCredentialController;

Route::get('bdcouriertracking', [trackingController::class, 'tracking'])->name('tracking');
Route::get('admin/settings/courier', [CourierCredentialController::class, 'index'])->name('admin.settings.courier-configration.index');
Route::put('admin/settings/courier/{courier_configuration}/update', [CourierCredentialController::class, 'update'])->name('admin.settings.courier-configration.update');

