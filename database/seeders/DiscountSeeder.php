<?php

namespace Database\Seeders;

use App\Models\Discount;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DiscountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $discount = new Discount();
        $discount->name = '20% off';
        $discount->type = 0;
        $discount->amount = 10;
        $discount->save();
    }
}
