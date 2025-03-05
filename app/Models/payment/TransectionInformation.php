<?php

namespace App\Models\payment;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\order;
use App\Models\payment\PaymentCredential;
class TransectionInformation extends Model
{
    use HasFactory;

    public function order_info() {
        return $this->hasOne(order::class,'id', 'order_id');
    }

    public function customer_info()  {
        return $this->order_info->customer;
    }

    public function payment_method()  {
        return $this->belongsTo(PaymentCredential::class, 'payment_method_id');
    }
}   
