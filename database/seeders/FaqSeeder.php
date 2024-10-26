<?php

namespace Database\Seeders;

use App\Models\Faq;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FaqSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                "title" => "sd fflaskdf lskdo",
                "answer" => "sd sdflas kd lskdo",
                "status" => 1,
            ],
            [
                "title" => "sd sdfaso",
                "answer" => "sd sdflas kd lskdo",
                "status" => 1,
            ],
            [
                "title" => "asdfasdf",
                "answer" => "sd sdflas kd lskdo",
                "status" => 1,
            ]

        ];

        foreach($data as $items){
            $faq  = new Faq;
            $faq->title = $items["title"];
            $faq->answer = $items["answer"];
            $faq->status = $items["status"];
            $faq->save();
        }
    }
}
