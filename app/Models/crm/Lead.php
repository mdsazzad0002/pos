<?php

namespace App\Models\crm;

use App\Models\User;
use App\Models\crm\LeadSource;
use App\Models\crm\LeadContact;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Lead extends Model
{
    use HasFactory;
    
    
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
    public function leadSource(){
        return $this->hasOne(LeadSource::class, 'id', 'from_lead_id');
    }
    
    public function contact() {
        return $this->hasOne(LeadContact::class, 'id', 'contact_id');
    }
    
    public function updater(){
        return $this->hasOne(User::class, 'id', 'updater_id');
        
    }
}
