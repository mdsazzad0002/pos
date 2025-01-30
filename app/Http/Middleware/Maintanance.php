<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request as FacadesRequest;

class Maintanance
{
    public function handle(Request $request, Closure $next): Response
    {
        if (env('APP_MAINTENANCE', true)) { // Fix typo & provide default value
            // Allow authenticated users and login page access
            if (Auth::check() || FacadesRequest::is('login')) {
                return $next($request);
            }

            return response()->view('errors.503', ['time' => env('APP_MAINTENANCE_TIME')], 503);
        }

        return $next($request);
    }
}
