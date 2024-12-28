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
use App\Http\Controllers\userController;
use App\Models\Discount;
use App\Models\VariantOption;
use App\Models\Vat;
use Illuminate\Support\Facades\DB;

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
            // $sliders = slider::where('status', 1)->get();

            return view('frontend.protfilio_theme.home.index', compact(   'homepagemanage', 'homepage', 'request'));

        }else{
            if(env('APP_DEBUG') == true){
                abort('404', 'Not Set Home Page');
            }else{
                return redirect('/');
            }
        }





    }


    public function filter_get(Request $request){
        // return $request;
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

            // filter by price slug
            if($request->has('min_price') && $request->min_price != '' && $request->has('max_price') && $request->max_price != ''){
                    $query->whereBetween('selling_price', [$request->min_price, $request->max_price]);
            }



            // filter by category id
            if($request->has('category_ids') && $request->category_ids != ''){
                 $query->whereIn('category', $request->category_ids);
            }

            // filter by subcategory id
            if($request->has('subcategory_ids') && $request->subcategory_ids != ''){
                 $query->whereIn('sub_category', $request->subcategory_ids);
            }
            if($request->has('brand') && $request->brand != ''){
                 $query->whereIn('brand', $request->brand);
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


           // Filter by rating
           if ($request->has('rating_star') && $request->rating_star != '' && $request->rating_star != 0) {
                $query->withAvg('review', 'rating') // eager load the average rating
                ->havingRaw('COALESCE(review_avg_rating, 0) >= ?', [$request->rating_star]);

            }
        })

        ->paginate(3);

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

        $features_product = product::whereNotNull('unit')
        ->where('for_selling', 1)
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

        $features_product = product::
        whereNotNull('unit')
        ->where('for_selling', 1)
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

        $features_product = product::withAvg('reviews_info', 'rating')
        ->whereNotNull('unit')
        ->where('for_selling', 1)
        ->where(function($query) use ($request){
           if($request->has('id')){
               if($request->id != null && $request->id != '' && $request->id != 0){
                   $query->where('category', $request->id);

               }
           }

       })->limit(20)->orderByRaw('COALESCE(reviews_info_avg_rating, 0) desc')->get();

       return view('frontend.protfilio_theme._filter_variant.partials.product', ['products'=> $features_product]);

   }


   public function about(){
       return view('frontend.about.index');
   }




//    public function filter(Request $request){
//        // return $request;
//        $products = product::withCount('review')->withAvg('review', 'rating')->where(function($query) use ($request){

//            // filter by category
//            if($request->has('category')){
//                $category = category::where('slug', $request->category)->first();
//                if($category){
//                    $query->orWhere('category', $category->id);
//                }
//            }

//        })->get();

//        //   $products;

//        return view('frontend.filter.index', compact('request', 'products'));
//    }


   public function quickview(Request $request){
       $product = product::find($request->id);
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
            $source_type = 'front_product';
            if($request->has('source_type')){
                $source_type = $request->source_type;
            }

            $product_id = $request->product_id;
            $product_key = 'pd_' . $product_id;
            if($request->has('size') && $request->size != 0  && $request->size != ''){
                $product_key =  $product_key .'vr_'. $request->size;
            }else{
                $request['size'] = 0;
            }
            $product_cart = session()->get( $source_type, []);

            // Flag to check if the product was found
            $found = false;

            // Loop through the cart to check if the product exists
            foreach ($product_cart as $key =>  &$item) {
                if (isset($item[$product_key])) {

                    // return $item;
                    if($request->has('type') && $request->type == 'remove_cart') {
                        unset($product_cart[$key]);
                        session()->put( $source_type, $product_cart);
                        // Check if the product was successfully removed
                        if (!isset($product_cart[$key])) {
                            // Return success response if product was removed
                            return response()->json([
                                'title' => 'Successfully removed from Cart',
                                'type'  => 'success',
                                'cart'  => $product_cart, // Return the updated cart
                            ]);
                        } else {
                            // This case should never happen because we already called unset.
                            return response()->json([
                                'title' => 'Failed to remove product from Cart',
                                'type'  => 'error',
                            ]);
                        }


                    }else{
                        // If the product exists, increase the quantity
                        if($request->has('quantity')) {
                            $item[ $product_key]['quantaty'] = $request->quantity;
                        }else{
                            $item[ $product_key]['quantaty'] += 1;

                        }
                        $found = true;
                        break;
                    }
                }
            }
            if($request->has('type') && $request->type == 'remove_cart') {

                return response()->json([
                    'title' => 'Failed to find items',
                    'type'  => 'error',
                ]);
            }

            // If the product was not found, add a new product entry
            if (!$found) {
                if($request->has('quantity')) {
                    $product_cart[] = [
                         $product_key => [
                            'product_id' => $product_id,
                            'quantaty' => $request->quantity,
                            'size' => $request->size ?? 0,
                        ]
                    ];
                }else{
                    $product_cart[] = [
                         $product_key => [
                            'product_id' => $product_id,
                            'quantaty' => 1,
                            'size' => $request->size ?? 0,
                        ]
                    ];

                }

            }

            // Save the updated cart back to the session

            // Save the updated cart back to the session
            session()->put( $source_type, $product_cart);

            return json_encode([
                'title'=>'Successfully  added Cart',
                'type'=>'success',
                'product' =>  $product_cart
            ]);
        }else{
            return json_encode([
                'title'=>'Failed  added Cart',
                'type'=>'error',
            ]);
        }




    }



    public function add_to_compareList(Request $request){
        $compare_list = session('compare_list', []);

        if($request->has('remove_list')) {
            unset($compare_list[$request->product_id]);
            session()->put('compare_list', $compare_list);

            return json_encode([
                'title'=>'Successfully  removed Compare List',
                'type'=>'success',
            ]);


        }else{


            $compare_list[] = $request->product_id;
            session()->put('compare_list', $compare_list);

            return json_encode([
                'title'=>'Successfully  added Compare List',
                'type'=>'success',
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


    public function side_cart_info(Request $request){

        $product_cart = (object) $this->cart_details($request);
        return view('layout.frontend_ajuba.partials._shoping_partials.product_items', compact( 'product_cart'));
    }




    public function sales_partner_store (Request $request){

        $data = new userController();
        $request['role'] = 'sales_partner';
        $request['type_of_user'] = 'Successfully Created Sales Partner';
        $data->store($request);

        return  $data;
    }








    public function cart_details(Request $request){


            $source_type = 'front_product';
            if($request->has('source_type')){
                $source_type = $request->source_type;
            }

            $product_cart = session()->get( $source_type, []);
            $data_array = [
                'subtotal'=> [
                    'price' => 0,
                    'vat' => 0,
                    'quantity' => 0,
                    'total_price' => 0,
                    'total_vat' => 0
                ]
            ];

            foreach ($product_cart as $key =>  &$item) {


                foreach($item as $key => $itemdata){
                    $product = product::find($itemdata['product_id']);
                    $product_variant = VariantOption::find($itemdata['size']);
                    $vat_info = Vat::find($product->vat);

                    if(!$product){
                        break;
                    }

                    $cal_quantity =  $itemdata['quantaty'];
                    $cal_price = $product_variant->selling_price ?? $product->selling_price;
                    $cal_sub_price = $cal_price * $cal_quantity;


                    $cat_vat_price = $vat_info ? (($cal_price * $vat_info->amount) / 100) : 0;
                    $cal_total_vat = ($cat_vat_price * $cal_quantity);

                    $cal_vat_with_price = $cal_price +  $cat_vat_price;

                    $cal_total_vat_with_price =  $cal_total_vat + $cal_sub_price;
                    $discount = Discount::find($product->discount_id);
                    $discount_price = $discount ? ($discount->type == 1 ? $discount->amount : (($cal_price * $discount->amount)/100)) : 0;//$cal_price

                    // return $itemdata['quantaty'];
                    $data_array['product'][]=[
                        'session_id'=>  $key,
                        'product' => $product,
                        'product_variant' => $product_variant,
                        'vat' => $vat_info,
                        'vat_price' =>  $cat_vat_price,
                        'size'=> $itemdata['size'],
                        'quantity' =>  $cal_quantity,
                        'price' =>  $cal_price,
                        'vat_with_price' =>  $cal_vat_with_price,
                        'price_with_vat_price' =>  $cal_vat_with_price,
                        'discount'=> $discount,
                        'discount_price' => $discount_price,
                        'total_price' => $cal_total_vat_with_price - $discount_price,

                        'total_vat_price' => $cal_total_vat,
                    ];

                    $data_array['subtotal']['quantity'] +=  $cal_quantity;
                    $data_array['subtotal']['vat'] +=  $cat_vat_price;
                    $data_array['subtotal']['total_vat'] +=   $cal_total_vat;
                    $data_array['subtotal']['price'] +=  $cal_sub_price;
                    $data_array['subtotal']['total_price'] += $cal_total_vat_with_price;

                }

            }


            return $data_array;
            // return response()->json($data_array);


    }

}
