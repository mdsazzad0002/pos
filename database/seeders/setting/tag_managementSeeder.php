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

        ];


        $count = DB::table('settings')->where('key', 24)->count();
        if($count == 0){
            DB::table('settings')->insert($data);
        }
    }
}
