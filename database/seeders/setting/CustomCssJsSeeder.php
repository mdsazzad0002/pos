<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CustomCssJsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 'custom_js_head_code', 'value' => '', 'creator_id' => '1', 'key' => '45'],
            ['name' => 'custom_css_head_code', 'value' => '', 'creator_id' => '1', 'key' => '45'],
            ['name' => 'custom_js_footer_code', 'value' => '', 'creator_id' => '1', 'key' => '45'],
            ['name' => 'custom_css_footer_code', 'value' => '', 'creator_id' => '1', 'key' => '45'],
            ['name' => 'custom_css__head_code', 'value' => '', 'creator_id' => '1', 'key' => '45'],
            ['name' => 'custom_css__footer_code', 'value' => '', 'creator_id' => '1', 'key' => '45'],


        ];

        DB::table('settings')->where('key', $data[0]['key'])->delete();
        DB::table('settings')->insert($data);
    }
}
