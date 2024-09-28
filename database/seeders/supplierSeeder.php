<?php

namespace Database\Seeders;

use App\Models\supplier;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class supplierSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $supplier = new supplier;
        $supplier->name = 'Test User';
        $supplier->email = 'test@gmail.com';
        $supplier->phone = '015*******';
        $supplier->creator = 1;
        $supplier->type = 1;
        $supplier->location = 'Dhaka Bangladesh';
        $supplier->account_holder = 'MD SAZZAD';
        $supplier->account_number = '01590084779';
        $supplier->bank_name = 'bKash';
        $supplier->bank_branch = 'Bangladesh';
        $supplier->upload_id = 0;

    }
}
