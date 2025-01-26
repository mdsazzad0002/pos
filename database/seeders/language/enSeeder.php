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
            "log.in" => 'log in',
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
            'settings.takto_sidebar-management' => 'Chat Settings',
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
            'settings.authenticted_history' => 'Authentic History',
            'device_access_check.sidebar.list.name' => 'Authentic History',
            'settings.authenticated_list' => 'Authentic History List',
            'setting.payment-settings' => 'Payment Settings',
            'settings.AmarPay' => 'AmarPay',
            'settings.SSLCommerz' => 'SSLCommerz',
            'settings.paypal' => 'Paypal',
            'settings.status' => 'Status',
            'settings.stripe' => 'Stripe',
            'settings.braintree' => 'Braintree',
            'settings.store_id' => 'Store ID',
            'settings.signature_key' => 'Signature Key',
            'settings.store_password' => 'Store Password',
            'settings.sandbox_status' => 'Sandbox Status',
            'settings.client_id' => 'Client ID',
            'settings.secret' => 'Secret',
            'settings.publishable' => 'Publishable',
            'settings.merchant_id' => 'Merchant ID',
            'settings.public_key' => 'Public Key',
            'settings.private_key' => 'Private Key',
            'settings.smtp_setting' => 'SMTP Settings',
            'settings.cookie-management' => 'Cookie Settings',
            'settings.takto-messageing-management' => 'Chat Settings',
            'settings.site-verification-setting' => 'Site Verification Settings',
            'settings.fcm' => 'FCM Settings',
            'settings.main-setting' => 'Main Settings',
            'language.sidebar.name' => 'Language Settings',
            'translate.sidebar.name' => 'Translator Settings',
            'settings.language' => 'Language',
            'sidebar.settings' => 'Settings',
            'language.title' => 'Language',
            'language.add_new' => '+',
            'log.choose_your_language' =>'Language',
            'log.Email' =>'Email',
            'log.Password' =>'Password',
            'log.Remember_me' =>'Remember Me',
            'log.Forgot_your_password?' =>'Forgot your password ?',
            'sidebar.product_management' =>'Product Management',
            'settings.product_list' =>'Product List',
            'sidebar.product_create' =>'Product Entry',
            'sidebar.category' =>'Category',
            'sidebar.subcategory' =>'SubCategory',
            'sidebar.area' =>'Area',
            'visit.webiste' =>'Visit Website',
            'area.name' =>'Area',
            'products.categories' =>'Product Category',
            'product.price_by_filter' =>'Filter by Price',
            'product.filter_by_brand' =>'Filter by Brand',
            'product.filter_by_rating' =>'Filter by Rating',
            'product.feature_product' =>'Feature Product',
            'frontend.call_us247' =>'Call Us 24/7',
            'category.name' =>'Category',
            'category.description' =>'Category Description',
            'band.title' =>'Brand',
            'contact.front_address' =>'Address',
            'contact.fornt_call_us' =>'Call Us',
            'contact.front_email_us' =>'Email Us',
            'contact.front_your_name' =>'Your Name',
            'contact.front_your_email' =>' Email',
            'contact.front_message' =>' Message',
            'contact.front_phone' =>' Phone',
            'settings.courier-configration-sidebar' =>' Courier Configuration',
            'settings.Walk In Delivery' =>'Working in Delivery',
            'settings.EasyPost' =>'EasyPost',
            'settings.SteadFast' =>'SteadFast',
            'settings.Others' =>'Other',
            'custom_js_css.custom_js_head_code' =>'Custom Script Head',
            'custom_js_css.custom_css_head_code' =>'Custom Css Head',
            'custom_js_css.custom_js_footer_code' =>'Custom Script Footer',
            'custom_js_css.custom_css_footer_code' =>'Custom Css Footer',
            'product.product_title' =>'Product Title',
            'product.product_list' =>'Product List',
            'product.create' =>'Product Create',
            'product.information' =>'Product Information',
            'product.landing_page_info' =>'Landing Page Info',
            'product.variant_option' =>'Variant Option',
            'settings.custom_js_css' =>'Custom Script',
            'sidebar.clear'=>'Cache Clear',
            'sidebar.backup'=>'Database Backup',
            'sidebar.administrator'=>'Administration',
            'takto-messageing-management.crisp_chat_id'=>'Crisp Chat ID',
            'takto-messageing-management.crisp_chat_status'=>'Crisp Chat Status',
            'settings.tracking_report'=>'Courier Tracking Report',




        ];

        $language = language::where('name', 'en')->first()->id;


        foreach($array as $key => $value){
            $newLn = Translation::where(['key'=> $key, 'language' => $language]);
            if($newLn->count() != 0){
                $newLn->first();
            }


            $newLn = new Translation;
            $newLn->key = $key;
            $newLn->value = $value;
            $newLn->language = $language;
            $newLn->type = explode('.', $key)[0];
            $newLn->save();
        }
    }
}
