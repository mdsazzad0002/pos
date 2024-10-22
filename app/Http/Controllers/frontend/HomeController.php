<?php

namespace App\Http\Controllers\frontend;

use App\Models\brand;
use App\Models\product;
use App\Models\category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\SubCategory;

class HomeController extends Controller
{
    public function index(){

        // Categorys
        $categories = Category::withCount(['products' => function ($query) {
            $query->where('status', 1);
        }])->where('status', 1)->get();

        // Brands
        $brands = brand::where('status', 1)->get();


        $feature_sub_category = SubCategory::where('status', 1)->where('feature', 1)->limit(5)->get();

        return view('index', compact('categories', 'brands', 'feature_sub_category'));
    }


    public function feature_view(Request $request){

         $features_product = product::join('sub_categories', 'products.sub_category', '=', 'sub_categories.id')
        ->where('products.status', 1)
        ->where('products.feature', 1)
        ->where('sub_categories.feature', 1) // Check if category is featured
        ->select('products.*') // Select product fields
        ->where(function($query) use ($request){
            if($request->has('id')){
                if($request->id != null && $request->id != '' && $request->id != 0){
                    $query->where('sub_categories.id', $request->id);

                }
            }

        })->limit(20)->get();

        return view('frontend.filter.partials.product', ['products'=> $features_product]);

    }
    public function popular_view(Request $request){

         $features_product = product::where(function($query) use ($request){
            if($request->has('id')){
                if($request->id != null && $request->id != '' && $request->id != 0){
                    $query->where('sub_categories.id', $request->id);

                }
            }

        })->limit(20)->orderBy('views' ,'asc')->get();

        return view('frontend.filter.partials.product', ['products'=> $features_product]);

    }


    public function about(){
        return view('frontend.about.index');
    }




    public function filter(Request $request){
        // return $request;
        $products = product::withCount('review')->withAvg('review', 'rating')->where(function($query) use ($request){

            // filter by category
            if($request->has('category')){
                $category = category::where('slug', $request->category)->first();
                if($category){
                    $query->orWhere('category', $category->id);
                }
            }


        })->get();

        //   $products;

        return view('frontend.filter.index', compact('request', 'products'));
    }


    public function quickview(Request $request){
        $product = product::withCount('review')->withAvg('review', 'rating')->find($request->id);
        if($product){
            $upload_id = $product->upload_id;
            $image_view = view('frontend.product.partials.model_image', compact('upload_id'))->render();
            $content_view = view('frontend.product.partials.model_content', compact('product'))->render();
            $data = [
                'image' => json_encode($image_view),
                'content' => json_encode($content_view),
            ];
            return $data;
        }

    }
}
