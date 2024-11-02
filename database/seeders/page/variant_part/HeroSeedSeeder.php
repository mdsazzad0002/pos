<?php

namespace Database\Seeders\page\variant_part;

use Illuminate\Database\Seeder;
use App\Models\VarinatSuggession;

class HeroSeedSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [

             // Brand 1
             [
                'key' =>'_hero_variant._hero_style1',
                'title' => 'Hero Style 1',
                'title_status' => 1,
                'sub_title' => 'Hero Sub Title',
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
             [
                'key' =>'_hero_variant._hero_style2',
                'title' => 'Hero Style 2',
                'title_status' => 1,
                'sub_title' => 'Hero Sub Title',
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
             [
                'key' =>'_hero_variant._hero_style3',
                'title' => 'Hero Style 3',
                'title_status' => 1,
                'sub_title' => 'Hero Sub Title',
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

