<?php

namespace Database\Seeders;

use App\Models\fcm;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FcmSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $new_fcm = new fcm;
        $new_fcm->fcm_public_key = 'BEaBNMfmaFzxbCbix8u9SnnGpcQljcz6CwrxLTw5xGoljkGZsdm5zpuqpHmkS3djcaJTI_pmRmYTjhodXn0xnLA';
        $new_fcm->fcm_private_key  = '9IzLk8M_5OjGgIT5xLYyRoSHbkTl2wR4tSIgTJiikOs';
        $new_fcm->fcm_status_key  = 0;
        $new_fcm->save();
    }
}
