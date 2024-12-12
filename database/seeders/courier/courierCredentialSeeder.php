<?php

namespace Database\Seeders\courier;

use App\Models\courier\CourierCredential;
use Illuminate\Database\Seeder;

class courierCredentialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $courier = [
                [
                    'provider'=>'Walk In Delivery',
                    'status'=>1,
                    'sandbox_status'=>1,
                ],
                [
                    'provider'=>'EasyPost',
                    'key' => 'shippo_test_2cb6d0c8057930440e8b510e19434d982c1ce48d',
                    'status'=>1,
                    'sandbox_status'=>1,
                ],
                [
                    'provider'=>'SteadFast',
                    'Api_Key'=>'jwqjaywbmswqrwymm0bdvnwvrr6annc4 ',
                    'Secret_Key' => 'g94vnmgpdvehmsp8vrhgkyrv',
                    'status'=>1,
                    'sandbox_status'=>1,
                ],
                [
                    'provider'=>'Others',
                    'status'=>1,
                    'sandbox_status'=>1,
                ],

            ];


            $count = CourierCredential::count();
            if($count == 0){
                foreach($courier as $items){
                    $items_data = new CourierCredential;
                    foreach($items as $key => $value){
                        $items_data[$key] = $value;
                    }
                    $items_data->save();

                }

            }

    }
}
