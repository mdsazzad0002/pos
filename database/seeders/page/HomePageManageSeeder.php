<?php

namespace Database\Seeders\page;

use App\Models\HomePageManage;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class HomePageManageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                'key' =>'_service_variant._service_style1',
                'title' => 'Service',
                'sub_title' => 'service.sub_title'
            ],
            [
                'key' =>'_service_variant._service_style2',
                'title' => 'Service',
                'sub_title' => 'service.sub_title'
            ],
            [
                'key' =>'_brand_variant._brand_style1',
                'title' => 'Service',
                'sub_title' => 'service.sub_title'
            ],
            [
                'key' =>'_contact_variant._contact_style1',
                'title' => 'Service',
                'sub_title' => 'service.sub_title'
            ]

        ];

        foreach($data as $item){
            $homepage = new HomePageManage();
            $homepage->key = $item['key'];
            $homepage->title = $item['title'];
            $homepage->sub_title = $item['sub_title'];
            $homepage->save();
        }
    }
}
