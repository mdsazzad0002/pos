<?php

namespace App\Http\Middleware;

use Closure;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use App\Models\language\Translation;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Schema;
use Symfony\Component\HttpFoundation\Response;

class SetLocale
{
    
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        if(Schema::hasTable('translations')){
            $locale = session('locale', 1);
            App::setLocale($locale);

            $translations = Translation::where('language', $locale)->get();
            $lines = [];
            foreach ($translations as $translation) {
                $lines[$translation->key] = $translation->value;
            }
            Lang::addLines($lines, $locale);


        }

        return $next($request);
    }
}
