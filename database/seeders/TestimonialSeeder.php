<?php

namespace Database\Seeders;

use App\Models\Testimonial;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TestimonialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'name' => 'Assume',
                'designation' => 'Ceo',
                'description' => ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd',
            ],
            [
                'name' => 'Assume',
                'designation' => 'Ceo',
                'description' => ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd',
            ],
            [
                'name' => 'Assume',
                'designation' => 'Ceo',
                'description' => ' lskdjf lsd fkdf lsdk faksdf lksd faksd fas dsjdkfl  askd ksldasjl fsdfsldkf ask lskdfj akdfladkflsd',
            ],
        ];

        foreach($data as $item){
            $testi = new Testimonial();
            $testi->name = $item['name'];
            $testi->designation = $item['designation'];
            $testi->description = $item['description'];
            $testi->save();
        }
    }
}
