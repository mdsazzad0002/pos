<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WaContact extends Model
{
    use HasFactory;

    protected $fillable = ['wa_id', 'name'];

    public function messages()
    {
        return $this->hasMany(WaMessage::class);
    }
}
