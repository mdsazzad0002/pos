<?php

namespace Database\Seeders\language;

use Illuminate\Database\Seeder;
use Database\Seeders\language\bnSeeder;
use Database\Seeders\language\enSeeder;
use Database\Seeders\language\LanguageSeeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class LanguageCaller extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            LanguageSeeder::class,
            enSeeder::class,
            bnSeeder::class
        ]);
    }
}
