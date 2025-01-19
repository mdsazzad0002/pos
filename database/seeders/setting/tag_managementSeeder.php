<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class tag_managementSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 'google_tag_manager_key', 'value' => '', 'creator_id' => '1', 'key' => '24'],
            ['name' => 'google_tag_analysis_key', 'value' => '', 'creator_id' => '1', 'key' => '24'],
            ['name' => 'facebook_app_id', 'value' => '', 'creator_id' => '1', 'key' => '24'],
            ['name' => 'facebook_pixel_id', 'value' => '', 'creator_id' => '1', 'key' => '24'],

        ];



        foreach($data as $key => $value){
            if(DB::table('settings')->where('key', 24)->where('name', $value['name'])->count() == 0){
                DB::table('settings')->insert($value);
            }else{
                DB::table('settings')->where('key', 24)->where('name', $value['name'])->update($value);
            }
        }

    }
}
