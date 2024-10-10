<?php

namespace Database\Seeders\language;

use Illuminate\Database\Seeder;
use App\Models\language\language;
use App\Models\language\Translation;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class bnSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $array = [
            "log.in" => 'log in bn',
        ];

        $language = language::where('name', 'bn')->first()->id;
        foreach($array as $key => $value){

            $newLn = new Translation;
            $newLn->key = $key;
            $newLn->value = $value;
            $newLn->language = $language;
            $newLn->type = explode('.', $key)[0];
            $newLn->save();
        }
    }
}
