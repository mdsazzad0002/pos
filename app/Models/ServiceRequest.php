<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\ServicePoint;
use App\Models\product;

class ServiceRequest extends Model
{
    use HasFactory;

    protected $guarded = [];
    public function service_point_info() { return $this->belongsTo(ServicePoint::class, 'service_point_id'); } // service_point()
    public function product_info() { return $this->belongsTo(product::class, 'product_id'); }
}
