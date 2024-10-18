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
            'cookie-management.cookie_declined_btn' => 'Cookie Declined Button Text ',
            'cookie-management.cookie_accept_btn' => 'Cookie Accept Button Text ',
            'cookie-management.cookie_link_text' => 'Cookie Hyper Link Text',
            'cookie-management.cookie_link' => 'Cookie Hyper Link',
            'cookie-management.cookie_description' => 'Cookie Description Text',
            'cookie-management.cookie_title' => 'Cookie Concent Title',
            'cookie-management.cookie_i_con_class_title' => 'Cookie icon Title',
            'cookie-management.cookie_status' => 'Cookie Status',
            'cookie-management.cookie_bg_color' => 'Cookie Background Color',
            'cookie-management.cookie_btn_1_color' => 'Cookie button Color 1',
            'cookie-management.cookie_btn_1_color_bg' => 'Cookie button bg Color 1',
            'cookie-management.cookie_btn_2_color' => 'Cookie button  Color 2',
            'cookie-management.cookie_btn_2_color_bg' => 'Cookie button bg Color 2',
            'settings.cookie-sidebar-management' => 'Cookie Settings',
            'settings.takto_sidebar-management' => 'Tak.to Settings',
            'settings.site-pwa-management' => 'Pwa Settings',
            'settings.email_setting_sidebar' => 'SMTP Settings',
            'site-pwa-management.pwa_image' => 'PWA image',
            'site-pwa-management.pwa_name' => 'PWA Name',
            'site-pwa-management.pwa_sort_namee' => 'PWA Sort Name',
            'site-pwa-management.theme_color' => 'PWA Theme color',
            'site-pwa-management.pwa_background_color' => 'PWA Background color',
            'site-pwa-management.pwa_orientationr' => 'PWA Orientation',
            'site-pwa-management.pwa_description' => 'PWA Description',
            'site-pwa-management.pwa_type' => 'PWA image type',
            'site-pwa-management.pwa_sizes' => 'PWA image size',
            'site-pwa-management.pwa_display' => 'PWA Display',
            'site-pwa-management.pwa_status' => 'PWA Status',
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
