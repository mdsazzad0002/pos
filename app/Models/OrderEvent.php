<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderEvent extends Model
{
    use HasFactory;

    public function status_data()
    {
        return $this->belongsTo(OrderStatus::class, 'status_id');
    }
}
