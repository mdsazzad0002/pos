<?php

namespace Database\Seeders;

use App\Models\FooterLinkSubHeading;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FooterLinkSubHeadingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'title'=> 'Useful Links',
                'url'=> '#',
                'status'=> 1
            ],
            [
                'title'=> 'Our Services',
                'url'=> '#',
                'status'=> 1
            ],
            [
                'title'=> 'Hic solutasetp',
                'url'=> '#',
                'status'=> 1
            ],
            [
                'title'=> 'Nobis illum',
                'url'=> '#',
                'status'=> 1
            ],
        ];
        for ($i=1; $i < 5; $i++) {

            foreach($data as $key => $item){
                $footehead = new FooterLinkSubHeading;
                $footehead->title = $item['title'];
                $footehead->url = $item['url'];
                $footehead->heading_id = $i;
                $footehead->status = $item['status'];
                $footehead->icon = 'bi bi-chevron-right';
                $footehead->save();
            }
        }
    }
}
