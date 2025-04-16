<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class WaMessage extends Model
{
    use HasFactory;

    protected $fillable = ['wa_contact_id', 'message_id', 'body', 'type', 'received_at','status'];

    public function contact()
    {
        return $this->belongsTo(WaContact::class, 'wa_contact_id');
    }
}
