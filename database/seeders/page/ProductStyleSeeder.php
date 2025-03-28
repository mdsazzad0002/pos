<?php

namespace Database\Seeders\page;

use App\Models\ProductStyle;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductStyleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $data_array =[
            'Product_style' => [
                'key' => '_product_style.product_style1',
                'title' => 'Product Style Style 1',
                'upload_id'=>'preset/_product_style/product_style1.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                  ...
                ',
            ],
          
            'Product_style2' => [
                'key' => '_product_style.product_style2',
                'title' => 'Product Style Style 2',
                'upload_id'=>'preset/_product_style/product_style2.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                  ...
                ',
            ],
            'Product_style3' => [
                'key' => '_product_style.product_style3',
                'title' => 'Product Style Style 3',
                'upload_id'=>'preset/_product_style/product_style3.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                 ...
                ',
            ],
            'Product_style4' => [
                'key' => '_product_style.product_style4',
                'title' => 'Product Style Style 4',
                'upload_id'=>'preset/_product_style/product_style4.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                  ...
                ',
            ],
            'Product_style5' => [
                'key' => '_product_style.product_style5',
                'title' => 'Product Style Style 5',
                'upload_id'=>'preset/_product_style/product_style5.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                  ...
                ',
            ],
            'Product_style6' => [
                'key' => '_product_style.product_style6',
                'title' => 'Product Style Style 6',
                'upload_id'=>'preset/_product_style/product_style6.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                  ...
                ',
            ],
            'Product_style7' => [
                'key' => '_product_style.product_style7',
                'title' => 'Product Style Style 7',
                'upload_id'=>'preset/_product_style/product_style7.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                  ...
                ',
            ],
        ];



        foreach($data_array as $key => $value){
            $homepage = ProductStyle::where('key', $value['key'])->first();
            if(!$homepage){
                $homepage = new ProductStyle();
            }
            foreach($value as $key => $value){
                $homepage->$key = $value;
            }
            $homepage->save();
        }
    }
}
