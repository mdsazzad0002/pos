<?php

namespace App\Models;

use App\Models\unit;
use App\Models\User;
use App\Models\brand;
use App\Models\category;
use App\Models\reviewProduct;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class product extends Model
{
    use HasFactory;

    protected $appends = ['image_url'];

    // Recombanend 1st items
    public function category_info(){
        return $this->hasOne(category::class, 'id', 'category');
    }

    public function categoryInfo(){
        return $this->hasOne(category::class, 'id', 'category');
    }


    public function categorys(){
        return $this->hasOne(category::class, 'id', 'category');
    }
    public function sub_category_info(){
        return $this->hasOne(SubCategory::class, 'id', 'sub_category');
    }



    // Recombanend 1st items
    public function brand_info(){
        return $this->hasOne(brand::class, 'id', 'brand');

    }
    public function brands(){
        return $this->hasOne(brand::class, 'id', 'brand');
    }

    public function unit_info(){
        return $this->hasOne(unit::class, 'id', 'unit');

    }
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
    public function vat_info(){
        return $this->hasOne(Vat::class,'id', 'vat');

    }
    public function getImageUrlAttribute(){
        return dynamic_asset($this->upload_id);
    }

    public function review(){
        return $this->hasMany(reviewProduct::class, 'product_id', 'id');
    }
    public function averageRating(){
        return $this->review()->avg('rating');  // 'rating' is the column name in the reviewProduct table
    }



    public function discount_info(){
        return discount::whereIn('id', explode(',',$this->discount_id))->get();
    }

    public function variant_option_info(){
        return $this->hasMany(VariantOption::class, 'product_id', 'id');
    }



}
