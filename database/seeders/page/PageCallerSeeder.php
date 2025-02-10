<?php

namespace Database\Seeders\page;


use Illuminate\Database\Seeder;
use Database\Seeders\page\PageSeeder;
use Database\Seeders\page\CompareStyleSeeder;
use Database\Seeders\page\FooterStyleSeeder;
use Database\Seeders\page\HeaderStyleSeeder;
use Database\Seeders\page\ProductStyleSeeder;
use Database\Seeders\page\VarinatSuggessionSeeder;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PageCallerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call(PageSeeder::class);
        $this->call(VarinatSuggessionSeeder::class);
        $this->call(CompareStyleSeeder::class);
        $this->call(FooterStyleSeeder::class);
        $this->call(HeaderStyleSeeder::class);
        $this->call(ProductStyleSeeder::class);

    }
}
