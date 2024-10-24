<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FooterLinkHeading extends Model
{
    use HasFactory;

    public function sub_heading(){
        return $this->hasMany(FooterLinkSubHeading::class, 'heading_id',  'id');
    }
}
