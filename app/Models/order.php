<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class order extends Model
{
    use HasFactory,SoftDeletes;
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }

    public function product(){
        return $this->hasOne(product::class, 'id', 'productId');
    }

    public function customer(){
        return $this->hasOne(customer::class, 'id', 'customer_id');
    }

    public function getTotalPriceAttribute(){
        return (int) $this->quantity * (int) $this->price;
    }


    public function order_events(){
        return $this->hasMany(OrderEvent::class, 'order_id', 'id');
    }


}
