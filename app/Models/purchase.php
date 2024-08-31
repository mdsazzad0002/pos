<?php

namespace App\Models;

use App\Models\product;
use App\Models\supplier;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class purchase extends Model
{
    use HasFactory;
    protected $appends = ['total_price'];
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }

    public function product(){
        return $this->hasOne(product::class, 'id', 'productId');
    }

    public function supplier(){
        return $this->hasOne(supplier::class, 'id', 'supplierId');
    }
    
    public function getTotalPriceAttribute(){
        return (int) $this->quantity * (int) $this->price;
    }
    
}
