<?php

namespace Database\Seeders\crm;

use Illuminate\Database\Seeder;
use Database\Seeders\crm\LeadSeeder;
use Database\Seeders\crm\LeadDealSeeder;
use Database\Seeders\crm\LeadSourceSeeder;
use Database\Seeders\crm\LeadAccountSeeder;
use Database\Seeders\crm\LeadContactSeeder;
use Database\Seeders\crm\LeadDealStageSeeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class CrmCaller extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            LeadSourceSeeder::class,
            LeadDealStageSeeder::class,
            LeadAccountSeeder::class,
            LeadSeeder::class,
            LeadDealSeeder::class,
            LeadContactSeeder::class
        ]);
    }
}
