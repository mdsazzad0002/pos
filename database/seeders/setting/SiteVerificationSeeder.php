<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class SiteVerificationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'name' => 'main_setting',
                'value' => 'Main Setting',
                'creator_id' => 1,
                'key' => '25',
            ],
            [
                'name' => 'google-site-verification',
                'value' => 'Google-Site-Verification',
                'creator_id' => 1,
                'key' => '25',
            ],
            [
                'name' => 'msvalidate.01',
                'value' => 'Msvalidate.01',
                'creator_id' => 1,
                'key' => '25',
            ],
            [
                'name' => 'yandex-verification',
                'value' => 'Yandex-Verification',
                'creator_id' => 1,
                'key' => '25',
            ],
            [
                'name' => 'p:domain_verify',
                'value' => 'P:domain Verify',
                'creator_id' => 1,
                'key' => '25',
            ],
            [
                'name' => 'fb:admins',
                'value' => 'Fb:admins',
                'creator_id' => 1,
                'key' => '25',
            ],
        ];


        $count = DB::table('settings')->where('key', )->count();
        if($count == 0){
            DB::table('settings')->insert($data);
        }
    }
}
