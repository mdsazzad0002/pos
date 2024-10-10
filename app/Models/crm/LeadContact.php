<?php

namespace App\Models\crm;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class LeadContact extends Model
{
    use HasFactory;
    protected $append = ['account'];
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
    public function account(){
        return $this->hasOne(LeadAccount::class, 'id', 'account_id');
    }

  
}
