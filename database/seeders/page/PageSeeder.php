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
                'page_type' => ''
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
            [
                'name' => 'Sales Partner',
                'slug' => 'sales/partner',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'sales_partner',
            ],
            [
                'name' => 'Dashboard',
                'slug' => 'user/dashboard',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'profile_dashboard',
            ],
            [
                'name' => 'Cart',
                'slug' => 'user/cart',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'profile_cart',
            ],
            [
                'name' => 'Location',
                'slug' => 'user/location',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'profile_location',
            ],
            [
                'name' => 'Order',
                'slug' => 'user/order',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'checkout_page',
            ],
            [
                'name' => 'Payment Information',
                'slug' => 'user/payment-info',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'payment_page',
            ],
            [
                'name' => 'Category Information',
                'slug' => 'category/details',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'category_details_page',
            ],
            [
                'name' => 'Bluk Order',
                'slug' => 'bluk-order',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'bluk_order',
            ],
            [
                'name' => 'Custom Order',
                'slug' => 'custom-order',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'custom_order',
            ],
            [
                'name' => 'Login',
                'slug' => 'customer/login',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'customer_login',
            ],
            [
                'name' => 'Order Success',
                'slug' => 'order/success',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'order_success',
            ],
            [
                'name' => '404',
                'slug' => '404',
                'status' => 1,
                'homepage' => 0,
                'page_type' => '404_error',
            ],
            [
                'name' => '503',
                'slug' => '503',
                'status' => 1,
                'homepage' => 0,
                'page_type' => '503_error',
            ],
            [
                'name' => '401',
                'slug' => '401',
                'status' => 1,
                'homepage' => 0,
                'page_type' => '401_error',
            ],
            [
                'name' => 'payment',
                'slug' => 'checkout/payment_method',
                'status' => 1,
                'homepage' => 0,
                'page_type' => 'payment_method',
            ],
           


        ];
        foreach($data as $item){
            $page = Page::where('slug', $item['slug'])->first();
            if(!$page){
                $page = new Page();
            }

            $page->name = $item['name'];
            $page->slug = $item['slug'];
            $page->page_type = $item['page_type'];
            $page->status = $item['status'];
            $page->homepage = $item['homepage'];
            $page->save();
        }

    }

}
