<?php

namespace App\Models\payment;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\order;

class TransectionInformation extends Model
{
    use HasFactory;

    public function order_info() {
        return $this->hasOne(order::class,'id', 'order_id');
    }

    public function customer_info()  {
        return $this->order_info->customer;
    }
}
