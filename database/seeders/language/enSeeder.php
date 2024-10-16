<?php

namespace Database\Seeders\language;

use App\Models\language\language;
use App\Models\language\Translation;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class enSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $array = [
            "log.in" => 'log in en',
            'settings.main_setting_sidebar' => 'Main Settings',
            'device_access_check.sidebar.list' => 'Device Access',
            'settings.notification_sidebar' => 'Notification Setting',
            'settings.site_verification_sidebar' => 'Site Verification Setting',
            'settings.site-tag-management' => 'Tag Management ',
        ];

        $language = language::where('name', 'en')->first()->id;


        foreach($array as $key => $value){

            $newLn = new Translation;
            $newLn->key = $key;
            $newLn->value = $value;
            $newLn->language = $language;
            $newLn->type = explode('.', $key)[0];
            $newLn->save();
        }
    }
}
