<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class product extends Model
{
    use HasFactory;

    protected $appends = ['image_url'];
    public function categpry_info(){
        return $this->hasOne(category::class, 'id', 'category');
    }
    public function brand_info(){
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

}
