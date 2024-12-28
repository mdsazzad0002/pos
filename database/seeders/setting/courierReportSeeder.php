<?php

namespace Database\Seeders\setting;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CourierReportSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            ['name' => 'bd_courier_tracking_id', 'value' => '44KuwISREmzWwTxOhapxFaiVyAIAuXVS2618lNMTa4OAJ3NWffuQKjrDeTfk', 'creator_id' => '1', 'key' => '27'],
            ['name' => 'bd_courier_tracking_status', 'value' => '1', 'creator_id' => '1', 'key' => '27'],

        ];


        $count = DB::table('settings')->where('key', 27)->count();
        if($count == 0){
            DB::table('settings')->insert($data);
        }
    }
}
