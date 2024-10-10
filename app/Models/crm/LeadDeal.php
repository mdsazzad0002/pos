<?php

namespace App\Models\crm;

use App\Models\User;
use App\Models\crm\Lead;
use App\Models\crm\LeadDealStage;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class LeadDeal extends Model
{
    use HasFactory;
    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
        
    public function updater(){
        return $this->hasOne(User::class, 'id', 'updater_id');
        
    }
    public function lead(){
        return $this->hasOne(Lead::class, 'id', 'lead_id');
    }
    public function stage(){
        return $this->hasOne(LeadDealStage::class, 'id', 'stage_id');
    }
}
