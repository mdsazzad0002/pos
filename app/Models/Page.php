<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\header;
use App\Models\HomePageManage;

class Page extends Model
{
    use HasFactory;
    protected $fillable = ['homepage'];

    public function home_page(){
        return $this->hasMany(HomePageManage::class, 'controlby', 'id')->orderBy('order', 'asc');
    }

    public function header_items(){
        return $this->belongsTo(header::class,'page_id', 'id');
    }
}
