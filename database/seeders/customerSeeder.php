<?php

namespace Database\Seeders;

use App\Models\Customer as customer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class customerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        if(customer::where('email', 'test@gmail.com')->exists()){
            return;
        }else{

            $customer = new customer;

            $customer->name = 'Test User';
            $customer->email = 'test@gmail.com';
            $customer->phone = '015*******';
            $customer->creator = 1;
            $customer->location = 'Dhaka Bangladesh';
            $customer->account_holder = 'MD SAZZAD';
            $customer->account_number = '01590084779';
            $customer->bank_name = 'bKash';
            $customer->bank_branch = 'Bangladesh';
            $customer->upload_id = 0;
            $customer->password = Hash::make(123456);

            $customer->save();
        }


    }
}
