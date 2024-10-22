<?php

namespace Database\Seeders;

use App\Models\slider;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SliderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'title' =>  'lorem  sdklf sldk fsldf jsldk sdlfk askdf laksd',
                'short_description' =>  'lorem  a sd sdf sdf sdfsdf sdsdklf sldk fsldf jsldk sdlfk askdf laksd',
                'upload_id' =>  0,
            ],
            [
                'title' =>  'asdjf laskjdf laskdf lsd flaksd flksad fla',
                'short_description' =>  'lorem  a sd sdf sdf sdfsdf sdsdklf sldk fsldf jsldk sdlfk askdf laksd',
                'upload_id' =>  0,
            ],
            [
                'title' =>  ' asdlf lskd flsdkjf lasjdf asodifuow flmfk lsdkf',
                'short_description' =>  'lorem  a sd sdf sdf sdfsdf sdsdklf sldk fsldf jsldk sdlfk askdf laksd',
                'upload_id' =>  0,
            ],
        ];

        foreach($data as $item){
            $slider = new slider;
            $slider->title = $item['title'];
            $slider->short_description = $item['short_description'];
            $slider->upload_id = $item['upload_id'];
            $slider->button_title = 'Get Started';
            $slider->button_link = '#';
            $slider->save();

        }
    }
}
