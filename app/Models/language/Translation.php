<?php

namespace App\Models\language;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Translation extends Model
{
    use HasFactory;
    protected $fillable = ['key', 'language', 'value'];

    public function user(){
        return $this->hasOne(User::class,'id', 'creator');
    }

    public function lang(){
        return $this->hasOne(language::class,'id', 'language');
    }
}
