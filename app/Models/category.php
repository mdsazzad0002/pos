<?php

namespace App\Models;

use App\Models\User;
use App\Models\product;
use App\Models\SubCategory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class category extends Model
{
    use HasFactory,SoftDeletes;


    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }


    public function products() {
        return $this->hasMany(product::class, 'category', 'id');
    }

    public function subcategories_info() {
        return $this->hasMany(SubCategory::class, 'category_id', 'id');
    }


    public function productCount() {
        return $this->products()->count();
    }

    public function brands_by_cat() {
        return brand::where('brands.status', 1)
            ->leftjoin('products', 'products.brand', '=', 'brands.id')  // Join products with brands
            ->where('products.category', $this->id)  // Filter products by category
            ->select('brands.name', 'brands.slug')
            ->get();
    }
    public function most_view_by_cat() {
        return product::where('category', $this->id)->where('status', 1)  // Filter products by category

            ->first();
    }



}
