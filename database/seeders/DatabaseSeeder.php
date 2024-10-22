<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use Database\Seeders\VatSeeder;
use Illuminate\Database\Seeder;
use Database\Seeders\crm\CrmCaller;
use Database\Seeders\crm\LeadSeeder;
use Database\Seeders\customerSeeder;
use Database\Seeders\generalsetting;



// Permission and User management

use Database\Seeders\mail\MailCaller;


use Database\Seeders\OrderStatusSeeder;
use Database\Seeders\SupplierTypeSeeder;


use Database\Seeders\PaymentMethodSeeder;
use Database\Seeders\language\LanguageCaller;
use Database\Seeders\payment\paymentCaller;
use Database\Seeders\permission\PermissionCaller;
use Database\Seeders\setting\settingCaller;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Permission and user management seeder


        $this->call(settingCaller::class);

        $this->call(branchSeeder::class);
        $this->call(customerSeeder::class);
        $this->call(supplierSeeder::class);
        $this->call(SupplierTypeSeeder::class);
        $this->call(categorySeeder::class);
        $this->call(brandSeeder::class);
        $this->call(productSeeder::class);
        $this->call(OrderStatusSeeder::class);
        $this->call(VatSeeder::class);
        $this->call(ServiceSeeder::class);
        $this->call(SliderSeeder::class);


        //Crm lead Seeder call


        $this->call(paymentCaller::class);
        $this->call(PermissionCaller::class);
        $this->call(CrmCaller::class);
        $this->call(LanguageCaller::class);
        $this->call(MailCaller::class);


    }
}
