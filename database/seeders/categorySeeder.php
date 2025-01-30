<?php

namespace Database\Seeders;

use App\Models\category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class categorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $categories = ['T Shirt', 'Shoes', 'Pant', 'Sheree', 'Underwire'];
        if (category::count() > 0) {
            return;
        }
        foreach($categories as $category){
            $brand_data = new category();
            $brand_data->creator = 1;
            $brand_data->name = $category;
            $brand_data->slug = create_slug($category, 'brand', 'slug');
            $brand_data->save();
        }
    }
}
