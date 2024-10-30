<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Models\Page;
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

        $homepage = Page::where('status', 1)->where('homepage', 1)->first();
        if($homepage){
            $homepagemanage = HomePageManage::where('status', 1)->where('controlby', $homepage->id)->orderBy('order', 'asc')->get();
            if($homepagemanage){
                        
                $sliders = slider::where('status', 1)->get();
                
                return view('frontend.protfilio_theme.home.index', compact(  'sliders',  'homepagemanage'));
            }else{
                abort('401', 'Add Items in this page');
            }
        }else{
            abort('401', 'Not Set Home Page');
        }



        

    }



    public function blog(){
        return view('frontend.protfilio_theme.blog.index');
    }

    public function show(){
        return view('frontend.protfilio_theme.blog.index');
    }

}
