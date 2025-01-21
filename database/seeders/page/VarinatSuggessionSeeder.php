<?php

namespace Database\Seeders\page;

use App\Models\HomePageManage;
use App\Models\Page;
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


            'hero_slider1' => [
                'key' =>'_hero_variant._hero_slider1',
                'title' => 'Hero Slider',
                'title_status' => 0,
                'sub_title' => 'Hero Slider',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================
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

            // Service View 1
            'service_view1' => [
                'key' =>'_service_view_variant._service_view1',
                'title' => 'Service View 1',
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


            // About Page 1
            'about1' => [
                'key' =>'_about_us_variant.about_us_style1',
                'title' => 'About page 1',
                'title_status' => 0,
                'sub_title' => 'About Us Title',
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


            // Product Details
            'product_details1' => [
                'key' =>'_product_details.product_details1',
                'title' => 'Product Details page 1',
                'title_status' => 0,
                'sub_title' => 'Product Details Title',
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


            // Product Filter 1
            'product_filter1' => [
                'key' =>'_filter_variant.filter_vaiant1',
                'title' => 'Product Filter  1',
                'title_status' => 0,
                'sub_title' => 'Product Filter Title',
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


            // Product Filter 1
            'product_cart1' => [
                'key' =>'_cart_variant.cart_style1',
                'title' => 'Product Filter  1',
                'title_status' => 0,
                'sub_title' => 'Product Filter Title',
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


            // Product wishlist 1
            'product_wishlist1' => [
                'key' =>'_wishlist_variant.wish_list_style1',
                'title' => 'Product wishlist  1',
                'title_status' => 0,
                'sub_title' => 'Product wishlist Title',
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



            // Product checkout 1
            'product_checkout1' => [
                'key' =>'_checkout_variant.checkout_style1',
                'title' => 'Product checkout  1',
                'title_status' => 0,
                'sub_title' => 'Product checkout Title',
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





            // Product tracing 1
            'tracking1' => [
                'key' =>'_tracking_variant.tracking_style1',
                'title' => 'Product checkout  1',
                'title_status' => 0,
                'sub_title' => 'Product tracking Title',
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




            // Product contact 1
            'contact_us1' => [
                'key' =>'_contact_us_variant.contact_us_style1',
                'title' => 'Contact us  1',
                'title_status' => 0,
                'sub_title' => 'contact us Title',
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




            // Product contact 1
            'register1' => [
                'key' =>'_register_variant.register_style1',
                'title' => 'Register us  1',
                'title_status' => 0,
                'sub_title' => 'contact us Title',
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


            // Product contact 1
            '_404v_1' => [
                'key' =>'_404_variant.404_style1',
                'title' => '404 page  1',
                'title_status' => 0,
                'sub_title' => 'contact us Title',
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



            // Product contact 1
            'comming_soon1' => [
                'key' =>'_comming_soon.comming_soon1',
                'title' => 'Comming soon  1',
                'title_status' => 0,
                'sub_title' => 'contact us Title',
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



            // Product contact 1
            'blog_1' => [
                'key' =>'_blog_variant.blog_variant1',
                'title' => 'blog  1',
                'title_status' => 0,
                'sub_title' => 'blog Title',
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

            // Product contact 1
            'blog_details_1' => [
                'key' =>'_blog_details_variant.blog_details_variant1',
                'title' => 'Blog Details  1',
                'title_status' => 0,
                'sub_title' => 'Blog details Title',
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

            // Faq 1
            'faq_1' => [
                'key' =>'_faq_variant._faq_style1',
                'title' => 'Faq style  1',
                'title_status' => 0,
                'sub_title' => 'Blog details Title',
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



            // Sales Partner 1
            'sales_partner_1' => [
                'key' =>'_sales_partner_commission.sales_partner1',
                'title' => 'Sales Partner style  1',
                'title_status' => 0,
                'sub_title' => 'Blog details Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================


            // Location variant 1
            'profile_location_1' => [
                'key' =>'_profile._location.variant_1',
                'title' => 'profile location style  1',
                'title_status' => 0,
                'sub_title' => 'Blog details Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================
            // Profile cart variant 1
            'profile_cart_1' => [
                'key' =>'_profile._cart.variant_1',
                'title' => 'Profile cart style  1',
                'title_status' => 0,
                'sub_title' => 'Blog details Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================
            // ===================================================================
            // ===================================================================
            // ===================================================================
            // Profile cart variant 1
            'profile_profile_1' => [
                'key' =>'_profile._profile.profile_variant_1',
                'title' => 'Profile Profile style  1',
                'title_status' => 0,
                'sub_title' => 'Blog details Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================
            'page_title1' => [
                'key' =>'_variant_manage.page_title',
                'title' => 'Page Title style  1',
                'title_status' => 0,
                'sub_title' => 'Blog details Title',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================

            'payment_page1' => [
                'key' =>'_profile._payment_information.variant_1',
                'title' => 'Payment Page 1',
                'title_status' => 0,
                'sub_title' => 'Payment Page 1',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================

            'checkout_page1' => [
                'key' =>'_profile._checkout.variant_1',
                'title' => 'Checkout Page 1',
                'title_status' => 0,
                'sub_title' => 'Checkout Page 1',
                'sub_title_status' => 0,
                'short_read_more' => 'Read More',
                'short_read_more_status' => 0,
                'view_all' => 'View All',
                'view_all_status' => 0,
                'items_per_row' => 0,
                'background' => 1,
                'is_banner' => 0,
                'background_color' => '#eeeeee',
                'background_type' => 0,

            ],
            // ===================================================================
            // ===================================================================
            // ===================================================================




        ];


        function seed_items($item, $sug = null){

            if($sug == null){
                $homepage =  VarinatSuggession::where('key', $item['key'])->first();
                if(!$homepage){
                    $homepage = new VarinatSuggession();
                }

            }else  {
                $homepage =  HomePageManage::where(['key'=> $item['key'], 'controlby'=> $sug])->first();
                if(!$homepage){
                    $homepage = new HomePageManage();
                }
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
                $homepage->short_read_more_page_url = '#';
                $homepage->view_all_page_url = '#';
                $homepage->save();

        }



        foreach($data as $items){
            seed_items($items);
        }

        // Home page seeder default
        $ecom_home = [ 'hero_slider1', 'hero3','category2', 'product4','product1','product2','product3'];
        foreach($ecom_home as $items){
            seed_items($data[$items],1);
        }


         // about-us page seeder default
         $about_us_id = Page::where('slug', 'about-us')->first();
         $ecom_home = ['page_title1', 'about1', 'faq_1',];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }

         // filter page seeder default
         $about_us_id = Page::where('slug', 'filter')->first();
         $ecom_home = [ 'page_title1', 'product_filter1',];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }


         // details page seeder default
         $about_us_id = Page::where('slug', 'product/details')->first();
         $ecom_home = [ 'product_details1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }

         // cart page seeder default
         $about_us_id = Page::where('slug', 'cart')->first();
         $ecom_home = [ 'product_cart1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }



         // checkout page seeder default
         $about_us_id = Page::where('slug', 'checkout')->first();
         $ecom_home = [ 'page_title1','product_checkout1', ];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }

         // tracking page seeder default
         $about_us_id = Page::where('slug', 'tracking')->first();
         $ecom_home = [ 'page_title1', 'tracking1',];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }

         // service page seeder default
         $about_us_id = Page::where('slug', 'service')->first();
         $ecom_home = [ 'page_title1','service1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }

         // service-details page seeder default
         $about_us_id = Page::where('slug', 'service-details')->first();
         $ecom_home = ['page_title1', 'service_view1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }

         // service-details page seeder default
         $about_us_id = Page::where('slug', 'register')->first();
         $ecom_home = [ 'page_title1','register1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }

         // Sales-details page seeder default
         $about_us_id = Page::where('page_type', 'sales_partner')->first();
         $ecom_home = [ 'page_title1','sales_partner_1', ];
         foreach($ecom_home as $items){
            seed_items($data[$items],$about_us_id->id);
        }



         // Sales-details page seeder default
         $about_us_id = Page::where('page_type', 'profile_dashboard')->first();
         $ecom_home = ['page_title1','profile_profile_1'];
         foreach($ecom_home as $items){
            seed_items($data[$items],$about_us_id->id);
        }


         $about_us_id = Page::where('page_type', 'profile_location')->first();
         $ecom_home = [ 'page_title1','profile_location_1'];
         foreach($ecom_home as $items){
            seed_items($data[$items],$about_us_id->id);
        }

         $about_us_id = Page::where('page_type', 'profile_cart')->first();
         $ecom_home = [ 'page_title1','profile_cart_1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }



         $about_us_id = Page::where('page_type', 'checkout_page')->first();
         $ecom_home = [ 'page_title1','checkout_page1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }


         $about_us_id = Page::where('page_type', 'payment_page')->first();
         $ecom_home = [ 'page_title1','payment_page1'];

         foreach($ecom_home as $items){
             seed_items($data[$items],$about_us_id->id);
         }


    }
}

