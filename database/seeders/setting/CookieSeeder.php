<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CookieSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 'cookie_declined_btn', 'value' => 'Declined', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_accept_btn', 'value' => 'Accept', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_link_text', 'value' => 'Read More ...', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_link', 'value' => 'https://dengrweb.com', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_description', 'value' => 'Your description text', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_title', 'value' => 'Cookie Concent', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_i_con_class_title', 'value' => 'fas fa-cookie', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_status', 'value' => '0', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_bg_color', 'value' => '#139dd8', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_btn_1_color', 'value' => '#ffffff', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_btn_1_color_bg', 'value' => '#0d5caf', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_btn_2_color', 'value' => '#eeeeee', 'creator_id' => '1', 'key' => '40'],
            ['name' => 'cookie_btn_2_color_bg', 'value' => '#d21919', 'creator_id' => '1', 'key' => '40'],
        ];




        $count = DB::table('settings')->where('key', 40)->count();
        if($count == 0){
            DB::table('settings')->insert($data);
        }


    }
}
