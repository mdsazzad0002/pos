<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\header;
use App\Models\HomePageManage;
use App\Models\VarinatSuggession;

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
        return Page::select('page_type')->distinct()->pluck('page_type');


    }
}
