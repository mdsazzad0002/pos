<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class unit extends Model
{
    use HasFactory;

    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }

    public function child_items(){
        return $this->hasOne(unit::class, 'id', 'sub_items_id');
    }
}
