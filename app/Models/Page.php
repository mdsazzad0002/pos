<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\header;
use App\Models\HomePageManage;
use App\Models\VarinatSuggession;
use Illuminate\Support\Facades\Auth;

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

  

    public function page_type(){

        return PageType::get()->filter(function ($variant) {
           return empty($variant->permission) ? true : Auth::user()->can($variant->permission ?? '');
        });
    }
}
