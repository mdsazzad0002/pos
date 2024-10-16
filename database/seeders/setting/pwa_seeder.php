<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class pwa_seeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 'pwa_image', 'value' => '0', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_name', 'value' => '0', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_sort_name', 'value' => 'D Pos', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'theme_color', 'value' => '#000000', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_background_color', 'value' => '#6b6b6b', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_orientation', 'value' => 'any', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_description', 'value' => 'D Pos', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_type', 'value' => 'image/png', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_sizes', 'value' => '150x150', 'creator_id' => '1', 'key' => '20'],
            ['name' => 'pwa_display', 'value' => 'standalone', 'creator_id' => '1', 'key' => '20'],

        ];


        $count = DB::table('settings')->where('key', 20)->count();
        if($count == 0){
            DB::table('settings')->insert($data);
        }


    }
}
