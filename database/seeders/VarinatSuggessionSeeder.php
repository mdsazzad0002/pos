<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\VarinatSuggession;
use App\Http\Controllers\VarinatSuggessionController;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class VarinatSuggessionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            // Service 1
            [
                'key' =>'_service_variant._service_style1',
                'title' => 'Service',
                'title_status' => 1,
                'sub_title' => 'Service Sub Title',
                'sub_title_status' => 1,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 1,
                'view_all' => 'View All',
                'view_all_status' => 1,
                'items_per_row' => 3,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // Service 2
            [
                'key' =>'_service_variant._service_style2',
                'title' => 'Service',
                'title_status' => 1,
                'sub_title' => 'Service Sub Title',
                'sub_title_status' => 1,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 1,
                'view_all' => 'View All',
                'view_all_status' => 1,
                'items_per_row' => 3,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // Brand 1
            [
                'key' =>'_brand_variant._brand_style1',
                'title' => 'Brand',
                'title_status' => 1,
                'sub_title' => 'Brand Sub Title',
                'sub_title_status' => 1,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 1,
                'view_all' => 'View All',
                'view_all_status' => 1,
                'items_per_row' => 3,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // Contact 1
            [
                'key' =>'_contact_variant._contact_style1',
                'title' => 'Brand',
                'title_status' => 1,
                'sub_title' => 'Brand Sub Title',
                'sub_title_status' => 1,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 1,
                'view_all' => 'View All',
                'view_all_status' => 1,
                'items_per_row' => 3,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],

        ];

        foreach($data as $item){
            $homepage = new VarinatSuggession();
            $homepage->key = $item['key'];
            $homepage->title = $item['title'];
            $homepage->sub_title = $item['sub_title'];
            $homepage->save();
        }
    }
}

