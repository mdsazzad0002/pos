<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class reviewProduct extends Model
{
    use HasFactory;

        protected $appends = ['review_image'];

        public function customer_info(){
            return $this->belongsTo(Customer::class, 'id', 'creator');
        }


        public function getReviewImageAttribute(){
            return dynamic_asset($this->customer_info->upload_id ?? 0);
        }
}
