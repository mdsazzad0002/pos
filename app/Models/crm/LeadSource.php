<?php

namespace App\Models\crm;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class LeadSource extends Model
{
    use HasFactory;
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
}
