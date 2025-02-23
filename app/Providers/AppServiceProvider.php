<?php

namespace App\Providers;

use App\Models\User;
use App\Models\mail\MailSetting;
use Illuminate\Support\Facades\App;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;



class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Schema::defaultStringLength(125);
        view()->share('asset_version', '1.0.0.1');


        Paginator::useBootstrapFour();

        if(Schema::hasTable('mail_settings') ){
            $mail_information = MailSetting::first();
            if($mail_information){
                $smtp = [
                    'transport' => 'smtp',
                    'host' => $mail_information->smtp_host,
                    'port' => $mail_information->smtp_port,
                    'encryption' => $mail_information->smtp_encryption,
                    'username' => $mail_information->smtp_username,
                    'password' => $mail_information->smtp_password,


                ];
                Config::set('mail.mailers.smtp',  $smtp);

                $from = [
                    'address' => $mail_information->from_address,
                    'name' => $mail_information->from_name,
                ];
                Config::set('mail.from',  $from);
                // dd(Config::get('mail'));

            }
        }

        // dd(config('mail.mailers.smtp'));

        // dd(User::first());
    }
}
