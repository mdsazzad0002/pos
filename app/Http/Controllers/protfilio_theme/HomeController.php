<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Models\brand;
use App\Models\Service;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\slider;
use App\Models\Testimonial;
use App\Models\User;

class HomeController extends Controller
{
    public function index(){

        $brands = brand::where('status', 1)->get();
        $services = Service::where('status', 1)->get();
        $sliders = slider::where('status', 1)->get();
        $testimonials = Testimonial::where('status', 1)->get();
        $teams = User::where('status',1)->get();

        return view('frontend.protfilio_theme.home.index', compact('brands', 'services', 'sliders', 'testimonials', 'teams'));
    }



    public function blog(){
        return view('frontend.protfilio_theme.blog.index');
    }

    public function show(){
        return view('frontend.protfilio_theme.blog.index');
    }

}
