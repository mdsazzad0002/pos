<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class generalsetting extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // $data = [
        //     ['id' => 1, 'name' => 'theme_mode', 'value' => '1', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:29:13'],
        //     ['id' => 2, 'name' => 'theme_layout-navbar-fixed', 'value' => '1', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:29:15'],
        //     ['id' => 3, 'name' => 'theme_sidebar-collapse', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:29:27'],
        //     ['id' => 4, 'name' => 'theme_layout-fixed', 'value' => '1', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:29:34'],
        //     ['id' => 5, 'name' => 'theme_sidebar-mini', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:29:37'],
        //     ['id' => 6, 'name' => 'theme_sidebar-mini-md', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:29:40'],
        //     ['id' => 7, 'name' => 'theme_sidebar-mini-xs', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:29:41'],
        //     ['id' => 8, 'name' => 'theme_layout-footer-fixed', 'value' => '1', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:19', 'updated_at' => '2024-06-16 06:30:21'],
        //     ['id' => 9, 'name' => 'theme_dropdown-legacy', 'value' => '1', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:29:17'],
        //     ['id' => 10, 'name' => 'theme_border-bottom-0', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:29:23'],
        //     ['id' => 11, 'name' => 'theme_navbar_bg', 'value' => 'bg-teal', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:31:06'],
        //     ['id' => 12, 'name' => 'theme_sidebar-no-expand', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:30:06'],
        //     ['id' => 13, 'name' => 'theme_dark_sidebar_variant', 'value' => 'light-teal', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:31:20'],
        //     ['id' => 14, 'name' => 'theme_brand_link', 'value' => 'bg-warning', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:31:31'],
        //     ['id' => 15, 'name' => 'app_name_short', 'value' => 'app_name_short404', 'creator_id' => '0', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:09:20'],
        //     ['id' => 16, 'name' => 'nav-flat', 'value' => 'nav-flat404', 'creator_id' => '0', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:09:20'],
        //     ['id' => 17, 'name' => 'theme_nav-legacy', 'value' => '1', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:30:13'],
        //     ['id' => 18, 'name' => 'theme_nav-compact', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:29:55'],
        //     ['id' => 19, 'name' => 'theme_nav-child-indent', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:30:10'],
        //     ['id' => 20, 'name' => 'theme_nav-collapse-hide-child', 'value' => '0', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:20', 'updated_at' => '2024-06-16 06:30:07'],
        //     ['id' => 21, 'name' => 'theme_nav-flat', 'value' => '1', 'creator_id' => '1', 'key' => '1', 'created_at' => '2024-06-16 06:09:21', 'updated_at' => '2024-06-16 06:29:47'],
        // ];

        // DB::table('settings')->insert($data);
    }
}
