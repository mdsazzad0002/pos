<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VarinatSuggession extends Model
{
    use HasFactory;

    protected $appends = ['image'];


    public function getImageAttribute(){
        return dynamic_asset($this->upload_id);
    }
}
