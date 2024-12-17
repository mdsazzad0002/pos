<?php

namespace App\Providers;

use Illuminate\Cache\RateLimiting\Limit;
use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * The path to your application's "home" route.
     *
     * Typically, users are redirected here after authentication.
     *
     * @var string
     */
    public const HOME = '/admin/dashboard';

    /**
     * Define your route model bindings, pattern filters, and other route configuration.
     */
    public function boot(): void
    {
        RateLimiter::for('api', function (Request $request) {
            return Limit::perMinute(60)->by($request->user()?->id ?: $request->ip());
        });

        $this->routes(function () {
            Route::middleware('api')
                ->prefix('api')
                ->group(base_path('routes/api.php'));

            Route::middleware('web')
                ->group(base_path('routes/web.php'));

            Route::middleware('web')
                ->group(base_path('routes/crm.php'));

            Route::middleware('web')
                ->group(base_path('routes/language.php'));

            Route::middleware('web')
                ->group(base_path('routes/mail.php'));

                Route::middleware('web')
                    ->group(base_path('routes/admin.php'));


            // Portfolio Theme


            Route::middleware('web','auth')
                ->name('admin.')
                ->prefix('admin')
                ->group(base_path('routes/protfilio_theme/admin.php'));


            Route::middleware('web')
                ->group(base_path('routes/protfilio_theme/web.php'));

        });
    }
}
