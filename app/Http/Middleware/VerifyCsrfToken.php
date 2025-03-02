<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware
{
    /**
     * The URIs that should be excluded from CSRF verification.
     *
     * @var array<int, string>
     */
    protected $except = [
        'uploads/post',
        'admin/Translation/*',
        'admin/fcm_notification/*',
        'amarpay/*',
        'sslcommerz/*',
        'paypal/*',
        'checkout',
        'admin/homePageManage',
        'admin/product/*',
        'admin/calenderevent',

    ];
}
