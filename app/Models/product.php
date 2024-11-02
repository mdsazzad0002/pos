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
    public function categoryInfo(){
        return $this->hasOne(category::class, 'id', 'category');
    }

    
    public function categorys(){
        return $this->hasOne(category::class, 'id', 'category');
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
    public function getImageUrlAttribute(){
        return dynamic_asset($this->upload_id);
    }

    public function review(){
        return $this->hasMany(reviewProduct::class, 'product_id', 'id');
    }



  

}
