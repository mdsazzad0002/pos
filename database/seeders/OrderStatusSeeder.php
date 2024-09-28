<?php

namespace Database\Seeders;

use App\Models\OrderStatus;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OrderStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $orderstatus = ['Pending', 'Shipping', 'Delivered', 'Confirmed'];
        foreach($orderstatus as $status){
            $new_orderstatus = new OrderStatus();
            $new_orderstatus->name = $status;
            $new_orderstatus->creator = 1;
            $new_orderstatus->save();
        }
    }
}
