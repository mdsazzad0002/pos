<?php

namespace Database\Seeders;

use App\Models\product;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class productSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $product = new product();
        $product->name = 'Test Product';
        $product->slug = Str::slug('Test Product', '-');
        $product->category = 1;
        $product->brand = 1;
        $product->for_selling = 0;
        $product->alert_quantity = 0;
        $product->upload_id = 0;
        $product->creator = 0;
        $product->save();
    }
}
