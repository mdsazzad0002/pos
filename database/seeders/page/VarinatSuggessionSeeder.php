<?php

namespace Database\Seeders\page;

use App\Models\HomePageManage;
use Illuminate\Database\Seeder;
use App\Models\VarinatSuggession;
use Database\Seeders\page\variant_part\HeroSeedSeeder;
use Database\Seeders\page\variant_part\BrandSeedSeeder;
use Database\Seeders\page\variant_part\ContactSeedSeeder;
use Database\Seeders\page\variant_part\ServiceSeedSeeder;
use Database\Seeders\page\variant_part\CategorySeedSeeder;


class VarinatSuggessionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
              // Brand =====================================================================
             'brand1' => [
                'key' =>'_brand_variant._brand_style1',
                'title' => 'Brand Style 1',
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
             'brand2' => [
                'key' =>'_brand_variant._brand_style2',
                'title' => 'Brand Style 2',
                'title_status' => 0,
                'sub_title' => 'Brand Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 15,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================





            // Contact =====================================================================
            'contact1' => [
                'key' =>'_contact_variant._contact_style1',
                'title' => 'Contact Style 1',
                'title_status' => 1,
                'sub_title' => 'Contact Sub Title',
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
            // ===================================================================
            // ===================================================================
            // ===================================================================

            // Category =====================================================================
            'category1' => [
                'key' =>'_category_variant._category_style1',
                'title' => 'Category Style 1',
                'title_status' => 0,
                'sub_title' => 'Category Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 12,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            'category2' => [
                'key' =>'_category_variant._category_style2',
                'title' => 'Category Style 2',
                'title_status' => 0,
                'sub_title' => 'Category Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 12,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================



              // Hero =====================================================================
              'hero1' => [
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
            'hero2' => [
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
            'hero3' => [
                'key' =>'_hero_variant._hero_style3',
                'title' => 'Hero Style 3',
                'title_status' => 0,
                'sub_title' => 'Hero Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 15,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================




            // Product Variant =====================================================================
             'product1' => [
                'key' =>'_product_variant._feature_product',
                'title' => 'Product  Style 1',
                'title_status' => 0,
                'sub_title' => 'Category Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 4,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
             'product2' => [
                'key' =>'_product_variant._popular_product',
                'title' => 'Product Style 2',
                'title_status' => 0,
                'sub_title' => 'Category Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 6,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
             'product3' => [
                'key' =>'_product_variant._recommended_product',
                'title' => 'Product Style 3',
                'title_status' => 0,
                'sub_title' => 'Category Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 6,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
             'product4' => [
                'key' =>'_product_variant._recent_product',
                'title' => 'Product Style 3',
                'title_status' => 0,
                'sub_title' => 'Category Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 6,
                'background' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
              // ===================================================================
            // ===================================================================
            // ===================================================================




             // Service =====================================================================
            'service1' => [
                'key' =>'_service_variant._service_style1',
                'title' => 'Service Style 1',
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
            'service2' => [
                'key' =>'_service_variant._service_style2',
                'title' => 'Service Style 2',
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
            // ===================================================================
            // ===================================================================
            // ===================================================================

             // Banner =====================================================================
            'banner1' => [
                'key' =>'_banner_card._bannar_card1',
                'title' => 'Banner Card 1',
                'title_status' => 0,
                'sub_title' => 'Service Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 0,
                'is_banner' => 1,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // Banner 2
            'banner2' => [
                'key' =>'_banner_card._bannar_card2',
                'title' => 'Banner Card 2',
                'title_status' => 0,
                'sub_title' => 'Service Sub Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 0,
                'is_banner' => 1,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================



        ];


        function seed_items($item, $sug= null){

            if($sug == null){
                    $homepage = new VarinatSuggession();
                }else{
                    $homepage = new HomePageManage();
                    $homepage->controlby = $sug;

                }
                $homepage->key = $item['is_banner'] ?? 0;
                $homepage->key = $item['key'];
                $homepage->title = $item['title'];
                $homepage->title_status = $item['title_status'];
                $homepage->view_all = $item['view_all'];
                $homepage->short_read_more = $item['short_read_more'];
                $homepage->sub_title = $item['sub_title'];
                $homepage->sub_title_status = $item['sub_title_status'];
                $homepage->items_per_row = $item['items_per_row'];
                $homepage->background = $item['background'];
                $homepage->background_color = $item['background_color'];
                $homepage->view_all_status = $item['view_all_status'];
                $homepage->background_type = $item['background_type'];
                $homepage->save();
            }



        foreach($data as $items){
            seed_items($items);
        }

        $ecom_home = [ 'category2','hero3', 'product4','product1','product2','product3'];
        foreach($ecom_home as $items){
            seed_items($data[$items],1);
        }


    }
}

