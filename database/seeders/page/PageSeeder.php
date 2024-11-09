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
                'slug' => 'about-us',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'Filter',
                'slug' => 'filter',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'Product details',
                'slug' => 'product/details',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'cart',
                'slug' => 'cart',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'checkout',
                'slug' => 'checkout',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'tracking',
                'slug' => 'tracking',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'service',
                'slug' => 'service',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'service-details',
                'slug' => 'service-details',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'register',
                'slug' => 'register',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'wishlist',
                'slug' => 'wishlist',
                'status' => 1,
                'homepage' => 0,
            ],

            [
                'name' => 'coming-soon',
                'slug' => 'coming-soon',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'blog',
                'slug' => 'blog',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'blog details',
                'slug' => 'blog/details',
                'status' => 1,
                'homepage' => 0,
            ],
            [
                'name' => 'FAQ',
                'slug' => 'faq',
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
