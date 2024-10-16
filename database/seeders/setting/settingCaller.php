<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Database\Seeders\setting\generalsetting;
use Database\Seeders\setting\main_settingSeeder;
use Database\Seeders\siteVerificationSeeder;
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
            siteVerificationSeeder::class,
            tag_managementSeeder::class,
            pwa_seeder::class,
        ]);
    }
}
