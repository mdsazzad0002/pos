<?php

namespace App\Models\language;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class language extends Model
{
    use HasFactory;
    protected $fillable = ['name'];

    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }
}
