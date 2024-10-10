<?php

namespace Database\Seeders\language;


use Illuminate\Database\Seeder;
use App\Models\language\language;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class LanguageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $languages = ['en', 'bn'];

        foreach ($languages as $key => $language) {
            $new_translate =  new language;
            $new_translate->name = $language;
            $new_translate->creator = 1;
            $new_translate->updater_id = 1;
            $new_translate->save();

        }

    }
}
