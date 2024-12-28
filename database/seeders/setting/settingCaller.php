<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Database\Seeders\setting\PwaSeeder;
use Database\Seeders\setting\CookieSeeder;


use Database\Seeders\setting\generalsetting;
use Database\Seeders\setting\main_settingSeeder;
use Database\Seeders\setting\SiteVerificationSeeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class settingCaller extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            generalsetting::class,
            main_settingSeeder::class,
            fcmSettingSeeder::class,
            SiteVerificationSeeder::class,
            tag_managementSeeder::class,
            PwaSeeder::class,
            takto_messageSeeder::class,
            CookieSeeder::class,
            CourierReportSeeder::class
        ]);
    }
}
