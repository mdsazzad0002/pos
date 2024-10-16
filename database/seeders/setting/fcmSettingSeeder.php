<?php

namespace Database\Seeders\setting;

use App\Models\fcm;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class fcmSettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            'fcm_private_key' => '9IzLk8M_5OjGgIT5xLYyRoSHbkTl2wR4tSIgTJiikOs',
            'fcm_public_key' => 'BEaBNMfmaFzxbCbix8u9SnnGpcQljcz6CwrxLTw5xGoljkGZsdm5zpuqpHmkS3djcaJTI_pmRmYTjhodXn0xnLA',
            'fcm_status_key' => '0',
            'updater_id' => '1',
            'creator' => '1',
        ];

        $data_count = fcm::count();
        if($data_count == 0){
            fcm::insert($data);
        }
    }
}
