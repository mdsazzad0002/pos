<?php

namespace Database\Seeders\page;

use Database\Seeders\page\variant_part\BrandSeedSeeder;
use Database\Seeders\page\variant_part\CategorySeedSeeder;
use Database\Seeders\page\variant_part\ContactSeedSeeder;
use Database\Seeders\page\variant_part\HeroSeedSeeder;
use Database\Seeders\page\variant_part\ServiceSeedSeeder;
use Illuminate\Database\Seeder;


class VarinatSuggessionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            HeroSeedSeeder::class,
            BrandSeedSeeder::class,
            ContactSeedSeeder::class,
            ServiceSeedSeeder::class,
            CategorySeedSeeder::class,
        ]);
    }
}

