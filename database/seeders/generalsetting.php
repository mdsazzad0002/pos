<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class generalsetting extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 'theme_sidebar-collapse', 'value' => '0', 'creator_id' => '1', 'key' => '1'],
            ['name' => 'theme_nav-legacy', 'value' => '0', 'creator_id' => '1', 'key' => '1'],
            ['name' => 'theme_nav-compact', 'value' => '0', 'creator_id' => '1', 'key' => '1'],
       
        ];

        DB::table('settings')->insert($data);
    }
}
