<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Order;
use App\Models\courier\CourierCredential;

class CourierInfo extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function order_info(){
        return $this->belongsTo(Order::class, 'order_id', 'order_id');
    }

    public function provider_info(){
        return $this->belongsTo(CourierCredential::class, 'provider_id', 'id');
    }

}
