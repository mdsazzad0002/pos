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
                'title' => 'Product Style Style',
                'upload_id'=>'uploads/preset/_product_style/product_style1.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                   Product Style 1
                ',
            ],
            'Product_style2' => [
                'key' => '_product_style.product_style2',
                'title' => 'Product Style Style',
                'upload_id'=>'uploads/preset/_product_style/product_style2.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                   Product Style 2
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
