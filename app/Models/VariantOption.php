<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VariantOption extends Model
{
    use HasFactory;
    protected $fillable = ['product_id','name','old_price','selling_price', 'creator'];
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
}
