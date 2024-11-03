<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubCategory extends Model
{
    use HasFactory;



    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }

    public function category(){
        return $this->hasOne(category::class, 'id', 'category_id');
    }
}
