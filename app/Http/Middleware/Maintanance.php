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


            $maintenanceTime = \Carbon\Carbon::parse(config('app.maintenance.time'))->timestamp; // Parse the maintenance time
            $maintenanceTimeFrom = \Carbon\Carbon::parse(config('app.maintenance.from'))->timestamp; // Parse the maintenance time


            if ($maintenanceTimeFrom >= \Carbon\Carbon::now()->timestamp) {
                return $next($request); // Proceed with the request if the maintenance time is still in the future
            }elseif ($maintenanceTime <= \Carbon\Carbon::now()->timestamp) {
                updateEnvFile('APP_MAINTANANCE', 'false');
                return $next($request); // Proceed with the request if the maintenance time is still in the future
            }else

            return response()->view('errors.503', [
                'time' => config('app.maintenance.time', 'Unknown')
            ], 503);
        }

        return $next($request);
    }
}
