<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    public function index(){
        return 'client.index';
    }
    public function show(Request $request, $slug){
        return $slug;
    } 
}
