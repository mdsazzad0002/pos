<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class customer extends Authenticatable
{
    use HasFactory;
    protected $guarded = ['id'];

    // public function user(){
    //     return $this->hasOne(User::class,'id', 'creator');
    // }
    public function areaItem(){
        return $this->hasOne(area::class, 'id', 'area');
    }
    public function user(){
        return $this->belongsTo(User::class);
    }


    public function addressable()
    {
        return $this->morphMany(Address::class, 'addressable');
    }

}
