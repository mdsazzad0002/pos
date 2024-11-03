<?php

namespace Database\Seeders\page;


use Illuminate\Database\Seeder;


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

    }
}
