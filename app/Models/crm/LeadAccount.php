<?php

namespace App\Models\crm;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;

class LeadAccount extends Model
{
    use HasFactory;
    protected $fillable = ['name', 'email'];
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
}
