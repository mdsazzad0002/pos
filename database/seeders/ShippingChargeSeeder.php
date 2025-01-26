<?php

namespace Database\Seeders;

use App\Models\ShippingCharge;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ShippingChargeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'name' =>  'Inside Dhaka',
                'amount' =>  100,
                'creator' =>  1,
                'updater' =>  1,
            ],
            [
                'name' =>  'Outside Dhaka',
                'amount' =>  150,
                'creator' =>  1,
                'updater' =>  1,
            ],

        ];



        foreach($data as $key => $item){
            $slider = ShippingCharge::where(['name' => $item['name']])->first();
            if(!$slider){
                $slider = new ShippingCharge;
            }
            foreach($item as $key => $value){
                $slider->$key = $value;
            }
            $slider->save();

        }
    }
}
