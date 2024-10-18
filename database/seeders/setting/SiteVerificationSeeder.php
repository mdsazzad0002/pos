<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SiteVerificationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        settings('google-site-verification', 25);
        settings('msvalidate.01', 25);
        settings('yandex-verification', 25);
        settings('p:domain_verify', 25);
        settings('fb:admins', 25);
    }
}
