<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderStatus extends Model
{
    use HasFactory;

    public function ChildItems() {
        return OrderStatus::whereIn('id', json_decode($this->under_items))->get();
    }

}
