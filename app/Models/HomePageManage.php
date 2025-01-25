<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomePageManage extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function page(){
        return $this->belongsTo(Page::class, "controlby");
    }

    public function HasExists($key){
        $data =  $this->hasOne(VarinatSuggession::class, 'key', 'key')->first();

        $return_data = false;
        if($data){
            $return_data =  $data->$key == 0 ? false : true;
        }
        return $return_data;
        // dd($return_data);

    }
}
