<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class supplier extends Model
{
    use HasFactory;

    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }

    public function areaItem(){
        return $this->hasOne(area::class, 'id', 'area');
    }
}
