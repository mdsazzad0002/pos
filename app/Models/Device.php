<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Device extends Model
{
    use HasFactory;
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }

    public function updater(){
        return $this->hasOne(User::class, 'id', 'updater_id');

    }
}
