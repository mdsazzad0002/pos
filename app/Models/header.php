<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class header extends Model
{
    use HasFactory;

    public function page(){
        return $this->hasOne(Page::class,"id","page_id");
    }
}
