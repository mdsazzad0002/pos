<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ContactController extends Controller
{

    public function contact(){
        return view('frontend.protfilio_theme.contact.index');
    }

    public function store(Request $request){
        
    }

}
