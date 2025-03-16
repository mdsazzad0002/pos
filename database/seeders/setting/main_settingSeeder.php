<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class main_settingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 'currency_symbol', 'value' => '$', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_image', 'value' => '0', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_name_short', 'value' => 'D Pos', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_title', 'value' => 'D Engr Pos', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_footer_image', 'value' => '0', 'creator_id' => '1', 'key' => '9'],


            ['name' => 'app_email', 'value' => 'dengrweb@gmail.com', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_about', 'value' => 'We are best of software company', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_tel', 'value' => '01590084779', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_linkedin', 'value' => 'https://linkedin.com/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_facebook', 'value' => 'https://facebook.com/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_whatsapp', 'value' => 'https://api.whatsapp.com/send?phone=01590084779', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_twitter', 'value' => 'https://twitter.com/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_youtube', 'value' => 'https://youtube.com/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_telegram', 'value' => 'https://t.me/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_linkedin', 'value' => 'https://linkedin.com/in/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_pinterest', 'value' => 'https://pinterest.com/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_github', 'value' => 'https://github.com/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_figma', 'value' => 'https://figma.com/mdsazzad0002', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_website', 'value' => 'https://code.dengrweb.com/users/superadmin', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_address', 'value' => 'Dhaka Mirpur', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_maps', 'value' => 'https://maps.google.com', 'creator_id' => '1', 'key' => '9'],

            ['name' => 'app_preloader_image', 'value' => '0', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'app_preloader_status', 'value' => '0', 'creator_id' => '1', 'key' => '9'],
            ['name' => 'theme_color', 'value' => '#000000', 'creator_id' => '1', 'key' => '9'],
           
            [
                'name' => 'detail_button_name',
                'key' => '77',
                'value' => 'Details'
            ],
            [
                'name' => 'detail_button_background_color',
                'key' => '77',
                'value' => '#000000'
            ],
            [
                'name' => 'detail_button_text_color',
                'key' => '77',
                'value' => '#ffffff'
            ],
            [
                'name' => 'detail_button_status',
                'key' => '77',
                'value' => '0'
            ],




            [
                'name' => 'cart_button_name',
                'key' => '77',
                'value' => 'Cart'
            ],
            [
                'name' => 'cart_button_status',
                'key' => '77',
                'value' => '0'
            ],
            [
                'name' => 'cart_button_background_color',
                'key' => '77',
                'value' => '#000000'
            ],
            [
                'name' => 'cart_button_text_color',
                'key' => '77',
                'value' => '#ffffff'
            ],





            [
                'name' => 'buy_now_button_name',
                'key' => '77',
                'value' => 'Buy Now'
            ],
            [
                'name' => 'buy_now_button_status',
                'key' => '77',
                'value' => '0'
            ],
            [
                'name' => 'buy_now_button_background_color',
                'key' => '77',
                'value' => '#000000'

            ],
            [
                'name' => 'buy_now_button_text_color',
                'key' => '77',
                'value' => '#ffffff'
            ],




            [
                'name' => 'whatsapp_button_name',
                'key' => '77',
                'value' => 'WhatsApp'

            ],
            [
                'name' => 'whatsapp_button_status',
                'key' => '77',
                'value' => '0'
            ],
            [
                'name' => 'whatsapp_button_background_color',
                'key' => '77',
                'value' => '#000000'
            ],[
                'name' => 'whatsapp_button_text_color',
                'key' => '77',
                'value' => '#ffffff'
            ],



            [
                'name' => 'next_page_button_name',
                'key' => '77',
                'value' => 'View Details'
            ],

            [
                'name' => 'next_page_button_background_color',
                'key' => '77',
                'value' => '#000000'

             ],
            [
                'name' => 'next_page_button_text_color',
                'key' => '77',
                'value' => '#ffffff'
             ]
          
        ];


        $count = DB::table('settings')->where('key', 9)->count();
        if($count == 0){
            foreach($data as $key => $value){
                $data[$key]['creator_id'] = '1';
            }
            DB::table('settings')->insert($data);
        }
    }
}
