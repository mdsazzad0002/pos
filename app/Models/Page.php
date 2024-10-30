<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use HasFactory;
    protected $fillable = ['homepage'];

    public function home_page(){
        return $this->hasMany(HomePageManage::class, 'controlby', 'id')->orderBy('order', 'asc');
    }
}
