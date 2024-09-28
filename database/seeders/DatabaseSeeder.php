<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Database\Seeders\userSeeder;
use Database\Seeders\customerSeeder;
use Database\Seeders\generalsetting;
use Database\Seeders\OrderStatusSeeder;
use Database\Seeders\SupplierTypeSeeder;
use Database\Seeders\PaymentMethodSeeder;
use Database\Seeders\rolepermissionsedder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $this->call(userSeeder::class);
        $this->call(generalsetting::class);
        $this->call(rolepermissionsedder::class);
        $this->call(branchSeeder::class);
        $this->call(customerSeeder::class);
        $this->call(supplierSeeder::class);
        $this->call(SupplierTypeSeeder::class);
        $this->call(categorySeeder::class);
        $this->call(brandSeeder::class);
        $this->call(productSeeder::class);
        $this->call(OrderStatusSeeder::class);
        $this->call(VatSeeder::class);
        $this->call(PaymentMethodSeeder::class);

        $this->call(LeadSourceSeeder::class);
        $this->call(LeadDealStageSeeder::class);
        $this->call(LeadAccountSeeder::class); 
        $this->call(LeadSeeder::class);
        $this->call(LeadDealSeeder::class);
        $this->call(LeadContactSeeder::class);
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
