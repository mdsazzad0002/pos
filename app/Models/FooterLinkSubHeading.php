<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FooterLinkSubHeading extends Model
{
    use HasFactory;

    public function footerlinkheading(){
        return $this->hasOne(FooterLinkHeading::class,"id","heading_id");
    }
}
