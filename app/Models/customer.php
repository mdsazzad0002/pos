<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Models\order as orderclass;
use Carbon\Carbon;

class Customer extends Authenticatable
{
    use HasFactory;
    protected $guarded = ['id'];
    protected $appends = ['upload_image', 'time_ago'];

    // public function user(){
    //     return $this->hasOne(User::class,'id', 'creator');
    // }
    public function areaItem(){
        return $this->hasOne(area::class, 'id', 'area');
    }
    public function user(){
        return $this->belongsTo(User::class);
    }


    public function addressable()
    {
        return $this->morphMany(Address::class, 'addressable');
    }

    public function order(){
        return $this->hasMany(orderclass::class, 'customer_id', 'id');
    }
    public function  getUploadImageAttribute() {
        return dynamic_asset($this->upload_id);
    }

    public function getTimeAgoAttribute(){
        return Carbon::parse($this->created_at)->diffForHumans();
    }

}
