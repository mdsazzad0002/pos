<?php

namespace Database\Seeders;

use App\Models\SubCategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SubCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $subcategories = ['T Shirt', 'Shoes', 'Pant', 'Sheree', 'Underwire'];
        foreach($subcategories as $items){
            $brand_data = new SubCategory();
            $brand_data->creator = 1;
            $brand_data->category_id = 1;
            $brand_data->name = $items;
            $brand_data->slug = create_slug($items, 'SubCategory', 'slug');
            $brand_data->save();
        }
    }
}
