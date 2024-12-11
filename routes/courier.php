<?php

use App\Http\Controllers\courier\bdcourier\trackingController;

Route::get('bdcouriertracking', [trackingController::class, 'tracking'])->name('tracking');

