<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CashCounter extends Model
{
    use HasFactory, SoftDeletes;

    public function branch_info(){
        return $this->hasOne(branch::class, 'id', 'branch_id');
    }

}
