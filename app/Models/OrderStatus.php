<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderStatus extends Model
{
    use HasFactory;

    public function ChildItems() {
        $items_data = json_decode($this->under_items) ?? [];
       
        return OrderStatus::whereIn('id',  $items_data)->get();
    }

}
