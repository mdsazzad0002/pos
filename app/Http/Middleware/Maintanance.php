<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request as FacadesRequest;

class Maintanance
{
    public function handle(Request $request, Closure $next)
    {
        if (config('app.maintenance.status', true)) { // Use config() instead of env()
            // Allow authenticated users and login page access
            if (Auth::check() || FacadesRequest::is('login')) {
                return $next($request);
            }

            return response()->view('errors.503', [
                'time' => config('app.maintenance.time', 'Unknown')
            ], 503);
        }

        return $next($request);
    }
}
