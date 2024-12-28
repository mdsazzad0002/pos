<?php

namespace Database\Seeders;

use App\Models\coupon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CouponSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $coupon = new coupon();
        $coupon->amount = 0;
        $coupon->type = 1;
        
        $coupon->details = 'text coupon';
        $coupon->title = 'test coupon';

        $coupon->upload_id = 0;
        $coupon->save();
    }
}
