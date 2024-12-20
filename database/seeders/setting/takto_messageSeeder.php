<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class takto_messageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 's1_src_link_tawk_to', 'value' => 'https://embed.tawk.to/670faba22480f5b4f58e3fa8/1iaajctkv', 'creator_id' => '1', 'key' => '31'],
            ['name' => 'tawk_to_status', 'value' => '0', 'creator_id' => '1', 'key' => '31']

        ];


        $count = DB::table('settings')->where('key', 31)->count();
        if($count == 0){
            DB::table('settings')->insert($data);
        }
    }
}
