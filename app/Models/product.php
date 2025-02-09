<?php

namespace App\Models;

use App\Models\unit;
use App\Models\User;
use App\Models\brand;
use App\Models\Category;
use App\Models\reviewProduct;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\Discount;
use Illuminate\Database\Eloquent\SoftDeletes;

class product extends Model
{
    use HasFactory, SoftDeletes;

    protected $appends = ['image_url', 'avg_rat', 'rat_count', 'status_text'];


    public function category_info(){
        return $this->hasOne(category::class, 'id', 'category');
    }

    // public function categoryInfo(){
    //     return $this->hasOne(category::class, 'id', 'category');
    // }


    // public function categorys(){
    //     return $this->hasOne(category::class, 'id', 'category');
    // }
    public function sub_category_info(){
        return $this->hasOne(SubCategory::class, 'id', 'sub_category');
    }




    public function brand_info(){
        return $this->hasOne(brand::class, 'id', 'brand');

    }
    // public function brands(){
    //     return $this->hasOne(brand::class, 'id', 'brand');
    // }

    public function unit_info(){
        return $this->hasOne(unit::class, 'id', 'unit');

    }

    public function units_info(){
       return $this->hasMany(unit::class, 'sub_items_id', 'unit');
    //    unit::where('sub_items_id', $this->unit)->get();
    }


    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
    public function vat_info(){
        return $this->hasOne(Vat::class,'id', 'vat');

    }
    public function reviews_info(){
        return $this->hasMany(reviewProduct::class, 'product_id', 'id');
    }
    public function reviewCount(){
        return $this->hasMany(reviewProduct::class, 'product_id', 'id')->count();
    }
    public function averageRating(){
        return $this->reviews_info()->avg('rating');  // 'rating' is the column name in the reviewProduct table
    }

    public function discounts_info(){
        return Discount::whereIn('id', explode(',',$this->discount_id))->get();
    }

    public function variant_option_info(){
        return $this->hasMany(VariantOption::class, 'product_id', 'id');
    }


    // attribute set

    public function getImageUrlAttribute(){
        return dynamic_asset($this->upload_id);
    }
    public function getAvgRatAttribute(){
        return $this->averageRating() ?? 0;
    }
    public function getRatCountAttribute(){
        return $this->reviewCount() ?? 0;
    }

    public function product_faq(){
        return $this->hasMany(ProductFaq::class, 'product_id', 'id');
    }

    public function getStatusTextAttribute(){
        return $this->status == 1 ? 'Active' : 'Inactive';
    }

}
