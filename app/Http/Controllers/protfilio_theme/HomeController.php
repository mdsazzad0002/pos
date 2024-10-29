<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Models\User;
use App\Models\brand;
use App\Models\slider;

use App\Models\Testimonial;
use Illuminate\Http\Request;
use App\Models\HomePageManage;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(){

        $homepagemanage = HomePageManage::where('status', 1)->orderBy('order', 'desc')->get();


        

        $sliders = slider::where('status', 1)->get();
        
        

        return view('frontend.protfilio_theme.home.index', compact(  'sliders',  'homepagemanage'));
    }



    public function blog(){
        return view('frontend.protfilio_theme.blog.index');
    }

    public function show(){
        return view('frontend.protfilio_theme.blog.index');
    }

}
