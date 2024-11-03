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
                'title' =>  'In Service',
                'short_description' =>  'Best sell tody',
                'sub_description' =>  'Limited offer',
                'upload_id' =>  0,
            ],
            [
                'title' =>  'In Service',
                'short_description' =>  'Best ',
                'sub_description' =>  'Limited offer',
                'upload_id' =>  0,
            ],
            [
                'title' =>  'In Service',
                'short_description' =>  'Best',
                'sub_description' =>  'Limited offer',
                'upload_id' =>  0,
            ],
        ];

        foreach($data as $item){
            $slider = new slider;
            $slider->title = $item['title'];
            $slider->short_description = $item['short_description'];
            $slider->sub_description = $item['sub_description'];
            $slider->upload_id = $item['upload_id'];
            $slider->button_title = 'Get Started';
            $slider->button_link = '#';
            $slider->save();

        }
    }
}
