<?php

namespace Database\Seeders\payment;


use Illuminate\Database\Seeder;

use Database\Seeders\payment\PaymentCredientialsSeeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class paymentCaller extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            PaymentCredientialsSeeder::class,
            
        ]);
    }
}
