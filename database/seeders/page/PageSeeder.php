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
                'page_type' => 'about'
            ],
            [
                'name' => 'Filter',
                'slug' => 'filter',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'filter'
            ],
            [
                'name' => 'Product details',
                'slug' => 'product/details',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'view'
            ],
            [
                'name' => 'cart',
                'slug' => 'cart',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'cart'
            ],
            [
                'name' => 'Checkout',
                'slug' => 'checkout',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'checkout'
            ],
            [
                'name' => 'Tracking',
                'slug' => 'tracking',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'tracking'
            ],
            [
                'name' => 'Service',
                'slug' => 'service',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'service'
            ],
            [
                'name' => 'Service Details',
                'slug' => 'service-details',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'service_details'
            ],
            [
                'name' => 'Register',
                'slug' => 'register',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'register'
            ],
            [
                'name' => 'Wishlist',
                'slug' => 'wishlist',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'wishlist'
            ],

            [
                'name' => 'coming-soon',
                'slug' => 'coming-soon',
                'status' => 1,
                'homepage' => 0,
                'page_type' => ''
            ],
            [
                'name' => 'Blog',
                'slug' => 'blog',
                'status' => 1,
                'homepage' => 0,
                'page_type' => ''
            ],
            [
                'name' => 'Blog Details',
                'slug' => 'blog/details',
                'status' => 1,
                'homepage' => 0,
                'page_type' => ''
            ],
            [
                'name' => 'FAQ',
                'slug' => 'faq',
                'status' => 1,
                'homepage' => 0,
                'page_type' => '',
            ],
            [
                'name' => 'Contact',
                'slug' => 'contact',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'contact',
            ],


        ];
        foreach($data as $item){
            $page = new Page();
            $page->name = $item['name'];
            $page->slug = $item['slug'];
            $page->page_type = $item['page_type'];
            $page->status = $item['status'];
            $page->homepage = $item['homepage'];
            $page->save();
        }

    }
}
