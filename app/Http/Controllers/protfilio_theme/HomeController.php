<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Models\Page;
use App\Models\User;
use App\Models\brand;

use App\Models\slider;
use App\Models\product;
use App\Models\category;
use App\Models\Testimonial;
use Illuminate\Http\Request;
use App\Models\HomePageManage;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(Request $request, $view = null){

        if( $view == null){
            $homepage = Page::where('status', 1)->where('homepage', 1)->first();
        }else{
            $homepage = Page::where('status', 1)->where('slug', $view)->first();
        }

        if($homepage){


            if($request->has('preview_page')){
                $items_id = $request->preview_page;

                $homepagemanage = HomePageManage::where('status', 1)->where('controlby', $homepage->id)->where('id', $items_id)->orderBy('order', 'asc')->get();

                return view('frontend.protfilio_theme.home.preview', compact('homepagemanage', 'homepage', 'request'));
            }

            $homepagemanage = HomePageManage::where('status', 1)->where('controlby', $homepage->id)->orderBy('order', 'asc')->get();
            $sliders = slider::where('status', 1)->get();

            return view('frontend.protfilio_theme.home.index', compact(  'sliders',  'homepagemanage', 'homepage', 'request'));

        }else{
            if(env('APP_DEBUG') == true){
                abort('404', 'Not Set Home Page');
            }else{
                return redirect('/');
            }
        }





    }


    public function filter_get(Request $request){
        $product_list = product::where('status', 1)->where(function($query) use ($request){

            // filter by category
            if($request->has('category_name') && $request->category_name != '' && $request->category_name != 'All Categories'){
                $category = category::where('name', $request->category_name)->first();
                //return $request;
                if($category){
                    $query->where('category', $category->id);
                }

            }

            // filter by category slug
            if($request->has('category') && $request->category != ''){
                $category = category::where('slug', $request->category)->first();
                if($category){
                    $query->where('category', $category->id);
                }
            }

            // filter by category id
            if($request->has('category') && $request->subcategory_ids != ''){
                 $query->whereIn('category', $request->subcategory_ids);
            }

            // filter by custom input
            if($request->has('q') && $request->q != ''){
                $q = explode(' ', $request->q);
                foreach (['name', 'short_description', 'sku', 'brand', 'tags'] as $column) {
                    foreach ($q as $value) {
                        // Use LIKE to find partial matches
                        $query->orWhere($column, 'LIKE', '%' . trim($value) . '%');
                    }
                }
            }
        })

        ->paginate(2);
        return view('frontend.protfilio_theme._product_default.partials.filter_product', compact('product_list'));
    }








    public function feature_view(Request $request){

        $features_product = product::where('status',1)
        ->where(function($query) use ($request){
            $query->where('feature', '1');

           if($request->has('id')){
               if($request->id != null && $request->id != '' && $request->id != 0){
                   $query->where('category', $request->id);

               }
           }

       })->limit(20)->get();

       return view('frontend.protfilio_theme._filter_variant.partials.product', ['products'=> $features_product]);

   }


   public function recent_view(Request $request){

        $features_product = product::withCount('review')->withAvg('review', 'rating')
        ->where(function($query) use ($request){
           if($request->has('id')){
               if($request->id != null && $request->id != '' && $request->id != 0){
                   $query->where('category', $request->id);

               }
           }

       })->limit(20)->orderBy('id' ,'desc')->get();

       return view('frontend.protfilio_theme._filter_variant.partials.product', ['products'=> $features_product]);

   }
   public function recommend_view(Request $request){

        $features_product = product::withCount('review')->withAvg('review', 'rating')
        ->where(function($query) use ($request){
           if($request->has('id')){
               if($request->id != null && $request->id != '' && $request->id != 0){
                   $query->where('category', $request->id);

               }
           }

       })->limit(20)->orderBy('views' ,'asc')->get();

       return view('frontend.protfilio_theme._filter_variant.partials.product', ['products'=> $features_product]);

   }


   public function popular_view(Request $request){

        $features_product = product::withCount('review')->withAvg('review', 'rating')
        ->where(function($query) use ($request){
           if($request->has('id')){
               if($request->id != null && $request->id != '' && $request->id != 0){
                   $query->where('category', $request->id);

               }
           }

       })->limit(20)->orderByRaw('COALESCE(review_avg_rating, 0) desc')->get();

       return view('frontend.protfilio_theme._filter_variant.partials.product', ['products'=> $features_product]);

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
           $image_view = view('frontend.protfilio_theme._product_variant.partials.model_image', compact('upload_id'))->render();
           $content_view = view('frontend.protfilio_theme._product_variant.partials.model_content', compact('product'))->render();
           $data = [
               'image' => json_encode($image_view),
               'content' => json_encode($content_view),
           ];
           return $data;
       }

   }


    public function blog(){
        return view('frontend.protfilio_theme.blog.index');
    }

    public function show(){
        return view('frontend.protfilio_theme.blog.index');
    }

    public function add_to_cart(Request $request){

        if ($request->has('product_id')) {

            $product_id = $request->product_id;
            $product_cart = session()->get('front_product', []);

            // Flag to check if the product was found
            $found = false;

            // Loop through the cart to check if the product exists
            foreach ($product_cart as &$item) {
                if (isset($item['pd_' . $product_id])) {
                    // If the product exists, increase the quantity
                    if($request->has('quantity')) {
                        $item['pd_' . $product_id]['quantaty'] = $request->quantity;
                    }else{
                        $item['pd_' . $product_id]['quantaty'] += 1;

                    }
                    $found = true;
                    break;
                }
            }

            // If the product was not found, add a new product entry
            if (!$found) {
                if($request->has('quantity')) {
                    $product_cart[] = [
                        'pd_' . $product_id => [
                            'product_id' => $product_id,
                            'quantaty' => $request->quantity,
                        ]
                    ];
                }else{
                    $product_cart[] = [
                        'pd_' . $product_id => [
                            'product_id' => $product_id,
                            'quantaty' => 1,
                        ]
                    ];

                }

            }

            // Save the updated cart back to the session

            // Save the updated cart back to the session
            session()->put('front_product', $product_cart);

            return json_encode([
                'title'=>'Successfully  added Cart',
                'type'=>'success',
            ]);
        }else{
            return json_encode([
                'title'=>'Failed  added Cart',
                'type'=>'error',
            ]);
        }




    }




    public function cart_and_wishlist(){
        $returned_data = [
            'front_product' => count(session('front_product', [])),
            'front_wishlist' => count(session('front_wishlist', []))
        ];

            header('Content-Type: text/event-stream');
            header('Cache-Control: no-cache');
            header('Connection: keep-alive');




            echo "data:" . json_encode($returned_data) . "\n\n";
            echo "\n\n";

            ob_flush();
            flush();
    }

    public function side_cart_info(){
        $cart = session("front_product", []);
        $products = [];

        foreach ($cart as $key => $items) {
            // Since $items is an associative array with only one key like 'pd_5', 'pd_6', etc.
            // We extract the first (and only) item in the array.
             $item = reset($items);  // reset() gives the first value of the array

            // Extract product_id and quantaty
            $product_id = $item['product_id'] ?? null;  // Default to null if product_id doesn't exist
            $quantaty = $item['quantaty'] ?? 0;  // Default to 0 if quantaty doesn't exist

            // Check if product_id exists
            if ($product_id !== null) {
                // Find the product in the database
                $product = Product::find($product_id);

                if ($product) {
                    // Add the quantity from the cart to the product
                    $product['items_cart'] = $quantaty;  // Set items_cart to the quantity in the cart

                    // Add the updated product to the products array
                    $products[] = $product;
                }
            }
        }

        return view('layout.frontend_ajuba.partials._shoping_partials.product_items', compact('cart', 'products'));
    }

}
