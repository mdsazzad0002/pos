<?php

namespace Database\Seeders;

use App\Models\FooterLinkHeading;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FooterLinkHeadingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'title'=> 'Useful Links',

                'status'=> 1
            ],
            [
                'title'=> 'Our Services',

                'status'=> 1
            ],
            [
                'title'=> 'Hic solutasetp',

                'status'=> 1
            ],
            [
                'title'=> 'Nobis illum',

                'status'=> 1
            ],
        ];
        foreach($data as $key => $item){
            $footehead =  FooterLinkHeading::where('title', $item['title'])->first();
            if(!$footehead){
                $footehead = new FooterLinkHeading;
            }
            $footehead->title = $item['title'];

            $footehead->status = $item['status'];
            $footehead->save();
        }
    }
}
