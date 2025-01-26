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
            ['name' => 'tawk_to_status', 'value' => '0', 'creator_id' => '1', 'key' => '31'],

            
            ['name' => 'crisp_chat_id', 'value' => '081aca0a-3ef7-42a7-bfb1-40311e186858', 'creator_id' => '1', 'key' => '31'],
            ['name' => 'crisp_chat_status', 'value' => '0', 'creator_id' => '1', 'key' => '31']



        ];

        foreach($data as $key => $value){
            if(DB::table('settings')->where('key', 31)->where('name', $value['name'])->count() == 0){
                DB::table('settings')->insert($value);
            }else{
                DB::table('settings')->where('key', 31)->where('name', $value['name'])->update($value);
            }
        }

    }
}
