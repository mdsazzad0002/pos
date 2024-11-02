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
            'setting.sidebar.list' => 'Settings',
            'crm.management_sidebar_name' => 'Crm Management',
            'user.management_sidebar_name' => 'User Management',
            'supplier.management_sidebar_name' => 'Supplier Management',
            'customer.management_sidebar_name' => 'Customer Management',
            'stock.management_sidebar_name' => 'Stock Management',
            'product.management_sidebar_name' => 'Product Management',
            'order.management_sidebar_name' => 'Order management',
            'site-tag-management.google_tag_manager_key' => 'Google Tag Manager Key',
            'site-tag-management.google_tag_analysis_key' => 'Google Analysis Key',
            'settings.payment-configration-sidebar' => 'Payment Setting',
            'takto-messageing-management.s1_src_link_tawk_to' => 'Tak.to src Link',
            'takto-messageing-management.tawk_to_status' => 'Tak.to Status',
            'site-pwa-management.pwa_sort_name' => 'PWA Short Name',
            'site-pwa-management.pwa_orientation' => 'PWA Site Orientation',
            'site-verification-setting.google-site-verification' => 'Google Site Verification Meta Value',
            'site-verification-setting.msvalidate.01' => 'MSvalidate Meta value',
            'site-verification-setting.yandex-verification' => 'Yandex Meta value',
            'site-verification-setting.p:domain_verify' => 'P:domain Meta value',
            'site-verification-setting.fb:admins' => 'FB Admin Meta value',
            'fcm.fcm_private_key' => 'FCM Private Key',
            'fcm.fcm_public_key' => 'FCM Public Key',
            'fcm.fcm_status_key' => 'FCM Status',
            'main-setting.app_image' => 'App Image',
            'main-setting.app_name_short' => 'App Name Short',
            'main-setting.app_title' => 'App Title',
            'main-setting.app_footer_image' => 'App Footer Image',
            'main-setting.app_email' => 'App Email',
            'main-setting.app_about' => 'App About',
            'main-setting.app_tel' => 'App Phone',
            'main-setting.app_linkedin' => 'App Linkedin Link',
            'main-setting.app_facebook' => 'App Facebook Link',
            'main-setting.app_whatsapp' => 'App Whatsapp No with country code',
            'main-setting.app_twitter' => 'App Twitter Link',
            'main-setting.app_youtube' => 'App Youtube Link',
            'main-setting.app_telegram' => 'App Telegram Link',
            'main-setting.app_pinterest' => 'App Pinterest Link',
            'main-setting.app_github' => 'App Github Link',
            'main-setting.app_figma' => 'App Figma Link',
            'main-setting.app_website' => 'App Website Link',
            'main-setting.app_address' => 'App Website Link',
            'main-setting.app_maps' => 'App Maps Link',
            'main-setting.app_preloader_image' => 'App Preloader Image',
            'main-setting.app_preloader_status' => 'App Preloader Status',
            'main-setting.currency_symbol' => 'App Currency Symbol',
            'main-setting.app_fav_image' => 'App Fav Icon',
            'main-setting.app_instagram' => 'App Instagram Link',

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
