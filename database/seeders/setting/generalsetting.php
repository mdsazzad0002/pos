<?php

namespace Database\Seeders\setting;

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

        DB::table('settings')->where('key', $data[0]['key'])->delete();
        DB::table('settings')->insert($data);
    }
}
