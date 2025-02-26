<?php

namespace App\Http\Controllers\protfilio_theme;

use App\Models\Page;
use App\Models\User;
use App\Models\brand;

use App\Models\slider;
use App\Models\product;
use App\Models\Category as category;
use App\Models\Testimonial;
use Illuminate\Http\Request;
use App\Models\HomePageManage;
use App\Http\Controllers\Controller;
use App\Http\Controllers\userController;
use App\Mail\MailerDynamic;
use App\Models\Address as address;
use App\Models\coupon;
use App\Models\Customer as customer;
use App\Models\Discount;
use App\Models\mail\MailSetting;
use App\Models\order;
use App\Models\OrderEvent;
use App\Models\VariantOption;
use App\Models\Vat;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Mpdf\Mpdf;
use Illuminate\Support\Facades\View;

class HomeController extends Controller
{
    public function index(Request $request, $view = null){
        $edit_url =  $url = $request->url() . '?' . http_build_query(request()->query());

        if($request->has('preview_page')){
              $homepage = Page::findOrFail($request->preview_page);
               
                // $url = $request->url; 
                // $homepage['slug'] = $url;
                //   #requestUri: "/previdw_page_and_fornt_page?preview_page=4&url=http://pos.localhost/product/details?slug=test-product"
          
             
        }elseif( $view == null){
            $homepage = Page::where('status', 1)->where('homepage', 1)->first();
        }else{
            $homepage = Page::where('status', 1)->where('slug', $view)->first();
        }

        if($homepage){

            $homepagemanage = HomePageManage::where('status', 1)->where('controlby', $homepage->id)->orderBy('order', 'asc')->get();


            if($request->has('preview_page')){
                return view('frontend.protfilio_theme.home.preview', compact('homepagemanage', 'homepage', 'request', 'edit_url'));
            }
            return view('frontend.protfilio_theme.home.index', compact(   'homepagemanage', 'homepage', 'request', 'edit_url'));


        }else{
            if(env('APP_DEBUG') == true){
                abort('404', 'Not Set Home Page');
            }else{
                return redirect('404');
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
                $query->withAvg('reviews_info', 'rating') // eager load the average rating
                ->havingRaw('COALESCE(review_avg_rating, 0) >= ?', [$request->rating_star]);

            }

        })

        ->paginate($request->paginate_items);

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


   public function product_category_wise(Request $request){
        $limit_product =  $request->limit ?? 10;
        $paginate_data = $request->paginate_data ?? false;
        $details_page_slug = $request->details_page_slug ?? false;
        $category =  $request->category_id;
        

        $specific_product_id = $request->p ?? false; // Replace with your desired product ID

        $products = Product::query();

         // Filter by category
        if ($category) {
            $products = $products->where('category', $category);
        }
        
        // Filter by product ID
        if ($specific_product_id) {
            $products = $products->orderByRaw('id = ? desc', [$specific_product_id]);
        }

        // order by id desc  
        $products = $products->orderBy('id', 'desc');
        
       
        if ($request->has('paginate_data') && !$paginate_data) {
            $products = $products->paginate($limit_product);
        } else {
            $products = $products->limit($limit_product)->get();
        }
        



        return view('frontend.protfilio_theme._filter_variant.partials.product_category_wise', ['products'=> $products, 'paginate_data'=>$paginate_data, 'details_page_slug'=>$details_page_slug, 'request' => $request]);


   }


   public function random_wise_product_category_wise(Request $request){
        $limit_product =  $request->limit ?? 10;
        $paginate_data = $request->paginate_data ?? false;
        $details_page_slug = $request->details_page_slug ?? false;

        if($paginate_data){
            $products = product::inRandomOrder()->paginate($limit_product);
        }else{
            $products = product::inRandomOrder()->limit($limit_product)->get();
        }


        return view('frontend.protfilio_theme._filter_variant.partials.product_category_wise', ['products'=> $products, 'paginate_data'=>$paginate_data, 'details_page_slug'=>$details_page_slug, 'request' => $request]);


   }


    public function blog(){
        return view('frontend.protfilio_theme.blog.index');
    }



    public function show(){
        return view('frontend.protfilio_theme.blog.index');
    }

    // verifying exist in cart
        public function verify_add_to_cart(Request $request){
            $product_cart = [];
            $found = false;
            $product_key = '';
            $source_type = 'front_product';

            if ($request->has('product_id')) {
              
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


                // Loop through the cart to check if the product exists
                foreach ($product_cart as $key =>  &$item) {
                    if (isset($item[$product_key])) {
                        $found = true;
                        break;
                    }
                }
            }
            
            $return_data = [
                'found' => $found,
                'key' => $product_key,
                'cart' => $product_cart,
                'source_type' => $source_type
            ];

            return $return_data;
        }

    // end verifying exist in cart



    public function add_to_cart(Request $request){

        $attempt = $request->attempt ?? 1;
        $primary_find_result = $this->verify_add_to_cart($request);
        $product_cart = $primary_find_result['cart'];
        $found = $primary_find_result['found'];
        $product_key = $key = $primary_find_result['key'];
        $source_type = $primary_find_result['source_type'];
        $product_id = $request->product_id;
        
    

        // return $product_id;
        if($found == true){
            if($request->has('type') && $request->type == 'remove_cart') {
                unset($product_cart[$key]);
                session()->put( $source_type, $product_cart);
               
                // Check if the product was successfully removed
                if ($this->verify_add_to_cart($request)['found'] == false) {
                    // Return success response if product was removed
                    return response()->json([
                        'title' => 'Successfully removed from Cart',
                        'type'  => 'success',
                        'cart'  => $product_cart, // Return the updated cart
                    ]);
                } else {
                    if($attempt == 1){
                        $attempt++;
                        $request['attempt'] = $attempt;
                        return $this->add_to_cart($request);
                    }
                    // This case should never happen because we already called unset.
                    return response()->json([
                        'title' => 'Failed to remove product from Cart',
                        'type'  => 'error',
                    ]);
                }


            }else{

                // If the product exists, increase the quantity
                if($request->has('quantity')) {
                    $product_cart[ $product_key]['quantaty'] = $request->quantity;
                }else{
                    $product_cart[ $product_key]['quantaty'] += 1;

                }
                $found = true;

                session()->put( $source_type, $product_cart);
                return response()->json([
                    'title' => 'Successfully updated to Cart',
                    'type'  => 'info',
                    'cart'  => $product_cart, // Return the updated cart
                ]);
                
                

            }
        }else{
            if($request->has('type') && $request->type == 'remove_cart') {
                // run again function if not remove product
                if($this->verify_add_to_cart($request)['found'] == false){
                    $product_cart = $this->add_to_cart($request);   
                }
    
                return response()->json([
                    'title' => 'Failed to find items',
                    'type'  => 'error',
                ]);
            }else{

                // If the product doesn't exist, add it to the cart
                if($request->has('size')){
                    $size = $request->size;
                }else{
                    $size = 0;
                }
    
                
                if (!$found) {
                    if($request->has('quantity')) {
                        $product_cart[] = [
                             $product_key => [
                                'product_id' => $product_id,
                                'quantaty' => $request->quantity,
                                'size' => $size,
    
                            ]
                        ];
                    }else{
                        $product_cart[] = [
                             $product_key => [
                                'product_id' => $product_id,
                                'quantaty' => 1,
                                'size' => $size,
    
                            ]
                        ];
    
                    }
                }

                session()->put( $source_type, $product_cart);

                if($this->verify_add_to_cart($request)['found'] == false){
                    if($attempt == 1){
                        $attempt++;
                        $request['attempt'] = $attempt;
                        return $this->add_to_cart($request);
                    }
                    return response()->json([
                        'title'=>'Failed  added Cart',
                        'type'=>'error',
                    ]);
                }
                // return end add to cart;

                return response()->json([
                    'title'=>'Successfully  added Cart',
                    'type'=>'success',
                    'product' =>  $product_cart
                ]);
                
            }

        }
              

    }


    


    public function compare_list(){
        $compare_list = session('compare_list',[]);
        return $products =  product::whereIn('id', $compare_list)->get();
    }




    public function add_to_compareList(Request $request){
        $compare_list = session('compare_list', []);

        if ($request->has('remove_list')) {
            $compare_list = array_filter($compare_list, function ($id) use ($request) {
                return $id != $request->product_id;
            });
            session()->put('compare_list', $compare_list);

            return response()->json([
                'title' => 'Successfully removed from Compare List',
                'type' => 'success',
                'compare_list' => $compare_list
            ]);
        } else {
            if (!in_array($request->product_id, $compare_list)) {
                $compare_list[] = $request->product_id;
                session()->put('compare_list', $compare_list);
            }

            return response()->json([
                'title' => 'Successfully added to Compare List',
                'type' => 'success',
                'compare_list' => $compare_list
            ]);
        }


    }





    public function cart_and_wishlist(){
        $returned_data = [
            'front_product' => count(session()->get('front_product') ?? []),
            'compare_list' => count(session()->get('compare_list') ?? []),
        ];

        return json_encode($returned_data);

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
// session()->forget($source_type);
            $product_cart = session()->get( $source_type, []);
            $data_array = [
                'subtotal'=> [
                    'pre_price'=>0,
                    'quantity' => 0,
                    'discount' => 0,
                    'vat' => 0,
                    'price' => 0,
                    'coupon'=>0,
                    'coupon_without_price' => 0,
                    'quantitys'=>[],
                    'product_ids' =>  $product_cart
                ]
            ];

            foreach ($product_cart as $key =>  &$item) {


                foreach($item as $key => $itemdata){
                    $product = product::find($itemdata['product_id']);

                    if(!$product){
                        break;
                    }

                    $product_variant = VariantOption::find($itemdata['size']);
                    $vat_info = Vat::find($product->vat);
                    $discount = Discount::find($product->discount_id);


                    // Quantity
                    $cal_quantity =  $itemdata['quantaty'];

                    // Price
                    $cal_price = $product_variant->selling_price ?? $product->selling_price;




                    // Discount
                    $discount_price = $discount ? ($discount->type == 1 ? $discount->amount : (($cal_price * $discount->amount)/100)) : 0;//$cal_price


                    // Price -  Discount = price_discount
                    $price_discount = $cal_price - $discount_price;


                    // Vat Price
                    $cat_vat_price = $vat_info ? (($price_discount * $vat_info->amount) / 100) : 0;


                    // price_discount + vat price = final price
                    $cal_total_with_vat = $cat_vat_price + $price_discount;





                    $data_array['product'][]=[
                        // Raw data
                        'size'=> $itemdata['size'],
                        'quantity' =>  $cal_quantity,

                        // Init Date
                        'session_id'=>  $key,
                        'product' => $product,
                        'product_variant' => $product_variant,
                        'vat' => $vat_info,


                        'price' =>  $cal_price,                 //Selling Price
                        'discount_price' => $discount_price,    // Discount
                        'price_discount' => $price_discount,    // Price -  Discount = price_discount
                        'vat_price' =>  $cat_vat_price,         // Vat Price
                        'cal_total_with_vat' =>  $cal_total_with_vat,     // price_discount + vat price = final price


                        // Summary
                        'single_subtotal' => $cal_total_with_vat * $cal_quantity   //Single Subtotal Price

                    ];


                    $data_array['subtotal']['quantitys'][$product->id] =  $cal_quantity;
                    $data_array['subtotal']['pre_price'] +=   $cal_price * $cal_quantity;
                    $data_array['subtotal']['quantity'] +=  $cal_quantity;
                    $data_array['subtotal']['vat'] +=  $cat_vat_price * $cal_quantity;
                    $data_array['subtotal']['discount'] +=  $discount_price * $cal_quantity;

                    $data_array['subtotal']['price'] +=   $cal_total_with_vat * $cal_quantity;


                }

                $coupon_id = session()->get('coupon_id',0);
                $coupon = coupon::find($coupon_id);

                // Coupon price
                if( $coupon && $coupon->expire_date > Carbon::now()){
                    $coupon_price = $coupon ?  ($coupon->type == 1 ?  $coupon->amount  : ($data_array['subtotal']['price'] * $coupon->amount)/100) : 0;
                }else{
                    $coupon_price = 0;
                }


                $data_array['subtotal']['coupon'] =   $coupon_price;

                // Final price - Coupoon price =  Final Coupon without price
                $data_array['subtotal']['coupon_without_price'] =   $data_array['subtotal']['price'] -  $coupon_price;


            }

            // dd($data_array);
            return $data_array;
            // return response()->json($data_array);


    }



    public function checkout(Request $request){

        $request->validate([

        ]);

        // return $request->all();
        if ($request->has('address_id') && $request->address_id == '') {
            $request->merge(['address_id' => 0]);
        }

        if ($request->has('billingaddress_id') && $request->billingaddress_id == '') {
            $request->merge(['billingaddress_id' => 0]);
        }


        // return auth()->guard('customer')->user();

        if(!auth()->guard('customer')->user()){

            $user = customer::where('email', $request->email)->first();
            if($user){
                return json_encode([
                    'status' => false,
                    'status_code'=> 301,
                    'message'=> 'User Already Exists please login first',
                ]);
            }



            $user = new customer();
            $user->name = $request->name ?? '';
            $user->email = $request->email  ?? '';
            $user->phone = $request->phone  ?? '';
            $user->password = Hash::make($request->email);
            $user->phone = $request->phone  ?? '';
            $user->prev_due = 0;
            $user->credit_limit = 20000;

           $user->save();

            auth()->guard('customer')->login($user);
        }else{
            $user = auth()->guard('customer')->user();
        }




        // Address
        $address_id = 0;
        $billingaddress_id = 0;

        if(!$request->has('address_id') || $request->address_id == 0){

            $address_find = address::where('addressable_type', customer::class)
            ->where('addressable_id', auth()->guard('customer')->user()->id)
            ->where(function($query) use ($request){
                if($request->has('address')){
                    $query->where('address', $request->address);

                }
                if($request->has('email')){
                    $query->where('email', $request->email);

                }
                if($request->has('phone')){
                    $query->where('phone', $request->phone);

                }
                if($request->has('post_code')){
                    $query->where('post_code', $request->post_code);

                }
                if($request->has('country')){
                    $query->where('country', $request->country);

                }
                if($request->has('state')){
                    $query->where('state', $request->state);

                }

            })
            ->first();


            if($address_find){
                $address_id = $address_find->id;
            }else{
                $address = new address();
                $address->name = $request->name ?? ''. ' ' . $request->lname  ?? '';
                $address->email = $request->email ?? '';
                $address->phone = $request->phone ?? '';
                $address->address = $request->address  ?? '';
                $address->address_optional = $request->apartment  ?? '';
                $address->district = $request->town  ?? '';
                $address->country = $request->country  ?? '';
                $address->state = $request->state  ?? '';
                $address->postal = $request->postal  ?? '';


                $address->addressable_type = customer::class;
                $address->addressable_id = $user->id;
                $address->save();

                $address_id = $address->id;
            }
        }else{
            $address_id = $request->address_id;
        }



        if(!$request->has('billingaddress_id') || $request->billingaddress_id == 0){
            $address = new address();
            $address->name = $request->name1  ?? ''. ' ' . $request->lname2  ?? '';
            $address->email = $request->email2  ?? '';
            $address->phone = $request->phone2 ?? '';
            $address->address = $request->address2 ?? '';
            $address->address_optional = $request->apartment2 ?? '';
            $address->district = $request->town2 ?? '';
            $address->country = $request->country2  ?? '';
            $address->state = $request->state2 ?? '';
            $address->postal = $request->postal2 ?? '';

            $address->addressable_type = customer::class;
            $address->addressable_id = $user->id;
            $address->save();

            $billingaddress_id = $address->id;
        }elseif($request->has('billingaddress_id')){
            $billingaddress_id = $request->billingaddress_id;

        }else{
            $billingaddress_id = $address_id;

        }
        // End Address









        if(auth()->guard('customer')->user()){

             $card_information = $this->cart_details($request);
            // dd($card_information['subtotal']['product_ids']);

            // Order add
            $order =  new order();
            $order->customer_id = $user->id;
            $order->order_id = time();

            $order->address = $address_id;
            $order->billing_address = $billingaddress_id;

            $order->product_ids = json_encode($card_information['subtotal']['product_ids']);
            $order->product_json = json_encode($card_information);
            $order->delivery_status = 0;
            $order->quantity = $card_information['subtotal']['quantity'];
            $order->quantitys = json_encode($card_information['subtotal']['quantitys']);
            $order->discount_id = $card_information['subtotal']['discount'];
            $order->price = $card_information['subtotal']['price'];
            $order->cash_collection = $card_information['subtotal']['price'];
            $order->vat = $card_information['subtotal']['vat'];
            $order->status = 1;
            $order->note = $request->textarea ?? '';
            $order->payment_method =  $request->plan ?? '0';

            $order->shipping_charge_id = $request->shipping_charge ?? 0;

            $order->save();
            // Order add end


            // Order Event add
            $order_event = new OrderEvent();
            $order_event->order_id = $order->id;
            $order_event->status_id = 1;
            $order_event->creator = auth()->guard('customer')->user()->id;
            $order_event->updater = auth()->guard('customer')->user()->id;
            $order_event->save();
            // Order Event add end
        }


        if(!isset($tracking_page)){
            $tracking_page = \App\Models\Page::where('status', 1)->where('page_type', 'tracking')->first();
            $mail_settings=  MailSetting::first();
        }


        if($tracking_page && $mail_settings){
            if($mail_settings->status == 1){

                $mailInfo = [

                    'title' => settings('app_title', 9).' From Order Invoice Generated', //must
                    'subject' => settings('app_title', 9).'From Order Invoice Generated', //must
                    // 'user' => $user?->email,
                    'email' => $user?->email,
                    'template' => 'order_create', //must
                    'name' => $user?->name,
                    'additional_text' => " <iframe src='".route('order_invoice')."?order_id=". $order->order_id ."'></iframe>
                                            <div>
                                                    <a  href='".url('/')."'> Visit Our Shop Now </a>
                                                    <a  href='". url($tracking_page->slug) ."?id=". $order->order_id ."&email=". $user->email."'> Track Order </a>
                                                     <a  href='".route('order_invoice')."?order_id=". $order->order_id ."'> View Invoice </a>
                                            </div>
                                            "
                ];

                Mail::to($mailInfo['email'], $mailInfo['title'])->send(new MailerDynamic($mailInfo));
            }
        }



        session()->put('front_product', []);

        return json_encode([
            'status' => true,
            'status_code' => 200,
            'message' => 'Order Placed Successfully',
            'order_id' => $order->id,
            'price' => $order->price,
            'payment_method' => $request->plan
        ]);
    }


    public function order_invoice(Request $request){
        if($request->has('order_id')){
            $order = order::where('order_id', $request->order_id)->first();
            if($order){

                $final = 4000;
                if($final = 400){
                    // Load the Blade view and render it into HTML
                    $html = View::make('frontend.protfilio_theme._profile._checkout.invoice_customer', compact('order'))->render();

                    // Initialize mPDF
                    $mpdf = new Mpdf();
                      // $mpdf->showImageErrors = true;
                    $mpdf->WriteHTML($html);
                    // $pdfOutput = $mpdf->Output('', 'S'); // 'S' returns the PDF as a string

                    // // Return response for download
                    // return response($pdfOutput)
                        // ->header('Content-Type', 'application/pdf')
                        // ->header('Content-Disposition', 'attachment; filename="'.$order->order_id.'.pdf');

                    // Output PDF as a response
                    return response($mpdf->Output($order->order_id.'.pdf', 'I'))->header('Content-Type', 'application/pdf');
                }



                return view('frontend.protfilio_theme._profile._checkout.invoice_customer', compact('order'));
            }
        }
        return back();
    }


    public function product_view_by_slug(Request $request, $slug){
        // return $request->all();
        
        $request['slug'] = $slug;
        $details_page = Page::where('status', 1)->where('page_type', 'view')->first();
        return   $this->index($request, $details_page?->slug);
    }

}
