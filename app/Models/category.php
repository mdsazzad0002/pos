<?php

namespace App\Models;

use App\Models\User;
use App\Models\product;
use App\Models\SubCategory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class category extends Model
{
    use HasFactory;


    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }


    public function products() {
        return $this->hasMany(product::class, 'category', 'id');
    }

    public function subcategory() {
        return $this->hasMany(SubCategory::class, 'category_id', 'id');
    }
}
