<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\User;

class ShippingCharge extends Model
{
    use HasFactory;

    public function user(){
        return $this->belongsTo(User::class, 'creator');
    }

    public function updater_user(){
        return $this->belongsTo(User::class, 'updater');
    }
}
