<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class order extends Model
{
    use HasFactory;
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
}
