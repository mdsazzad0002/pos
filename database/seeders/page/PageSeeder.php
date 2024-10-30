<?php

namespace Database\Seeders\page;

use App\Models\Page;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $data = [
            [
                'name' => 'Home',
                'slug' => '/',
                'status' => 1,
                'homepage' => 1,
            ],
            [
                'name' => 'About',
                'slug' => '/about',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'Contact Us',
                'slug' => '/contact_us',
                'status' => 1,
                'homepage' => 0,
            ],

        ];
        foreach($data as $item){
            $page = new Page();
            $page->name = $item['name'];
            $page->slug = $item['slug'];
            $page->status = $item['status'];
            $page->homepage = $item['homepage'];
            $page->save();
        }

    }
}
