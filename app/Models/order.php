<?php

namespace App\Models;

use App\Models\payment\PaymentCredential;
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

    public function address_info(){
        return $this->hasOne(Address::class, 'id', 'address');
    }
    public function billing_info(){
        return $this->hasOne(Address::class, 'id', 'billing_address');
    }

    public function shipping_info(){
        return $this->hasOne(Address::class, 'id', 'shipping_charge_id');
    }

    public function shipping_charge(){
        return $this->hasOne(ShippingCharge::class, 'id', 'shipping_charge_id');
    }

    public function order_status(){
        return OrderEvent::where('order_id', $this->order_id)->latest()->first()?->status_data?->name ?? 'Pending';
    }

    public function payment_method_info(){
        return $this->hasOne(PaymentCredential::class, 'id', 'payment_method');
    }

}
