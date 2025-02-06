<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\ProductFaq;
use App\Models\VariantOption;
use Illuminate\Http\Request;
use Picqer\Barcode\Renderers\HtmlRenderer;
use Picqer\Barcode\Types\TypeCode128;
use Yajra\DataTables\DataTables;

use function PHPSTORM_META\type;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(product::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })

                ->addColumn('category_name', function ($row) {
                    return $row->category_info?->name ?? '';
                })

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.product.show', $row->id);
                    $view_page = \App\Models\Page::where('page_type', 'view')->first();
                    return "
                    <div class='btn-group'>
                        <button class='btn btn-primary '
                        data-dialog=' modal-dialog-centered modal-lg'
                        onclick='button_ajax(this)'
                        data-title='$row->name  info'
                        data-href='$view_route'>View</button>
                        <a class='btn btn-success ml-1' target='_blank' href='".url($view_page->slug)."?slug=".$row->slug."'><i class='fas fa-external-link-alt'></i></a>
                    </div>
                    ";

                })
                ->addColumn('action', function ($row) {






                    $return_data = '';
                    if(auth()->user()->can('product edit')==true){
                        $edit_route = route('admin.product.edit', $row->id);
                        $edit_button =  "<a class='btn btn-warning' href='$edit_route'>Edit</a>";
                        $return_data = $edit_button. '&nbsp;';
                    }



                    if(auth()->user()->can('product delete') == true){
                        $delete_route = route('admin.product.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $return_data .= $delete_button ;
                    }

                    if(auth()->user()->can('product barcode') == true && env('APP_ENV') == 'local'){
                        $barcode_route = route('admin.product.barcode',$row->id);
                        $bar_button =  "<a class='btn btn-warning ml-1' href='$barcode_route'>Barcode</a>";

                        $return_data .= $bar_button ;
                    }


                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image', 'category_name'])
                ->make(true);
        }
        return view('admin.product.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

        $product = null;
        return view('admin.product.create', compact('product'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(
            [
                'vat'=>'required|integer',
                'unit'=>'required|integer',
                'category'=>'required|integer',
                'subcategory'=>'required|integer',
                'brand'=>'required|integer',
                'name'=>'required',
                'old_price'=>'required',
                'selling_price'=>'required',
                // 'selling_price'=>'required',
            ]
        );

        $request['type']= 'create';



        return $product_update = $this->update($request, null);


    }

    /**
     * Display the specified resource.
     */
    public function show(product $product)
    {
        return view('admin.product.partials.view', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(product $product)
    {
        return view('admin.product.create', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,  $product = null)
    {

        // return $request->all();
        $request->validate(
            [
                'vat'=>'required|integer',
                'unit'=>'required|integer',
                'category'=>'required|integer',
                'subcategory'=>'required|integer',
                'brand'=>'required|integer',
                'name'=>'required',
                'old_price'=>'required',
                'selling_price'=>'required',
                // 'selling_price'=>'required',
            ]
        );

        if($product == null){
            $product = new product();
        }else{
            $product = product::findOrFail($product);
        }

        if($product){

                $product->name = $request->name;
                $product->slug = create_slug($request->name, 'product', 'slug');
                if(!$product->product_id){
                    $product->product_id = create_slug('P-', 'product', 'product_id');
                }
                $product->sku = $request->sku;
                $product->unit = $request->unit;
                $product->brand = $request->brand;
                $product->category = $request->category;
                $product->sub_category = $request->subcategory;
                $product->vat = $request->vat;
                $product->discount_id = $request->discount_id ? implode(',',$request->discount_id) : 0;
                $product->old_price = $request->old_price;
                $product->selling_price = $request->selling_price;
                $product->alert_quantity = $request->alert_quantity;
                $product->weight = $request->weight;
                $product->garage = $request->garage;
                $product->route = $request->route ?? '';
                $product->feature = $request->feature;
                $product->service = $request->service;
                $product->status = $request->status;
                $product->for_selling = $request->for_selling;
                $product->free_delivery = $request->free_delivery;


                $product->upload_id = $request->image;
                if($request->has('images_multiple')){
                    $product->uploads_id = implode(',',$request->images_multiple);
                }


                $product->short_description = $request->short_description;
                $product->description = $request->description;
                $product->additional_description = $request->additional_description;
                $product->youtube_video = $request->youtube_video;
                $product->landing_page_bg = $request->landing_page_bg;
                $product->landing_page_color = $request->landing_page_color;
                $product->variant_on = $request->variant_on;
                $product->variant_option = json_encode([
                    'variant_key'=>$request->variant_key_name ?? '', //variant key name
                    'vairant_value'=>$request->variant_name_key ?? '',
                    'variant_details_key' => $request->variant_key_name_details ?? '',
                    'variant_details_value' => $request->variant_name_key_details ?? '',
                ]);


                $product->creator = auth()->user()->id ?? 0;
                $product->save();



                // working on variant product
                if ($request->has('variant_on') && $request->variant_on == 1) {


                    $existingVariants = VariantOption::where('product_id', $product->id)->get();

                    $existingOptionNames = $existingVariants->pluck('name')->toArray();

                    // Array to hold the option names from the request
                    $requestOptionNames = $request->variant_key;


                    foreach ($requestOptionNames as $key => $items) {
                            $items_data_var = [];
                            for ($i = 0; $i < 20; $i++) {
                                if ($request->has('details_key_value_'.$i)) {
                                    array_push($items_data_var, 'details_key_value_'.$i);
                                }else{
                                    break;
                            }

                        }


                        // return  $items_data;
                        // return $request->all();
                        $items_data = [
                            'old_price' => $request->old_price_v[$key],
                            'selling_price' => $request->selling_price_v[$key],
                            'creator' => auth()->user()->id  ?? 0,
                        ];

                        foreach ($items_data_var as $keydata => $value) {
                            // dd($value);
                            if($value){
                                $items_data[$value] = $request->$value[$key];
                            }
                        }
                        // dd($items_data);


                        VariantOption::updateOrCreate(
                            [
                                'product_id' => $product->id,
                                'name' => $items, // Use this for finding existing options
                            ],
                            $items_data
                        );
                    }

                    // dd($items_data);
                    $array_diff = array_diff($existingOptionNames, $requestOptionNames);

                    foreach($array_diff as $items){
                        $dataItem = VariantOption::where('name', $items)
                        ->where('product_id', $product->id)
                        ->first();
                        if($dataItem){
                            $dataItem->delete();
                        }
                    }
                }



                $product_faqs = ProductFaq::where('product_id', $product->id)->pluck('id')->toArray();
                $faq_remove_array = [];
                if($request->has('faq_title')){
                    foreach($request->faq_title as $key => $items){
                        if(in_array($request->faq_id[$key], $product_faqs)){
                            ProductFaq::where('id', $request->faq_id[$key])->update([
                                'question'=>$items,
                                'answer'=>$request->faq_answer[$key],
                                'product_id'=>$product->id,
                                'status'=>1,
                                'order_sort'=>$key,
                            ]);
                            $faq_remove_array[] = $request->faq_id[$key];
                        }else{
                            ProductFaq::create([
                                'product_id'=>$product->id,
                                'question'=>$items,
                                'answer'=>$request->faq_answer[$key],
                                'status'=>1,
                                'order_sort'=>$key,
                            ]);
                        }


                    }

                    $product_faqs = array_diff($product_faqs, $faq_remove_array);


                    foreach($product_faqs as $items){
                        $items_faq_for_delete = ProductFaq::findOrFail($items);
                        if($items_faq_for_delete){
                            $items_faq_for_delete->delete();
                        }

                    }
                }




                return json_encode([
                    'title'=>'Successfully  Save product',
                    'type'=>'success',
                    'refresh'=>'true',
                ]);
            }else{
                return json_encode([
                    'title'=>'Product Not Find',
                    'type'=>'error',
                    'refresh'=>'false',
                ]);
            }
    }

    public function delete(product $product){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(product $product)
    {

        $product->delete();

        return json_encode([
            'title'=>'Successfully  Deleted product',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getProduct (Request $request)
    {
        $data_result = product::where(function($query) use ($request) {
            if ($request->has('q')) {
                $keyword =  $request->q;
                $query->where('name', 'LIKE', "%$keyword%");
            }
        })->select('id', 'name as text', 'selling_price as price','variant_on', 'variant_option')->limit(10)->get();

        // Debugging the query
        // dd($data_result);

        $result_make = [];
        $result_make['items']= $data_result;

        return json_encode($result_make);

    }

    public function product_variant (Request $request)
    {
        $data_result = VariantOption::where(function($query) use ($request) {
            if ($request->has('q')) {
                $keyword =  $request->q;
                $query->where('product_id', "%$keyword%");
            }
        })->select('id', 'name as text', 'selling_price as price','variant_on', 'variant_option')->get();

        // Debugging the query
        // dd($data_result);

        $result_make = [];
        $result_make['items']= $data_result;

        return json_encode($result_make);

    }



    public function single_filter (Request $request)
    {

        $data_result = product::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('id',  $request->q);
            }
        })->select('id', 'name as text', 'selling_price as price')->first();


        return json_encode($data_result);

    }

    public function productByID($product)
    {
            $product = product::with('variant_option_info', 'vat_info', 'unit_info', 'units_info')->findOrFail($product);
            return response()->json($product);
    }

    public function barcode($id = null){

        $products = product::findOrFail($id);
        return view('admin.product.barcode',compact('products'));

    }


    public function filterPurchase (Request $request)
    {
        $data_result = product::with('unit_info','units_info','variant_option_info')
        ->whereNot('unit', null)
        ->where('service', 0)
        ->where(function($query) use ($request) {
            if ($request->has('q')) {
                $keyword =  $request->q;
                $query->where('name', 'LIKE', "%$keyword%");
            }
        })->limit(10)->get();

        return json_encode($data_result);

    }


    public function barcodeGenerate(Request $request){
        // return $request->all();

        $variant_find = null;
        $product_find = null;
        if($request->has('product') && $request->has('variant')){
            $product_find = product::findOrFail($request->product);
            if($request->variant != 0 && $request->variant != ''){
                $variant_find = VariantOption::find($request->variant);
            }

            $qr_make_code =   'p_'.$product_find->id.'-' .( $product_find->variant_on ? $variant_find->id : 0);

            $barcode = (new TypeCode128())->getBarcode($qr_make_code);

        // // Echo an HTML table
        $renderer = new HtmlRenderer();
        $bur_code = $renderer->render($barcode);
        return  $extra_code = '<div class="container_every_code">
           '.$bur_code.'
           <div class="price text-center"> Price'.settings('currency_symbol', 9) . $product_find->selling_price. '  '.  $qr_make_code.'</div>
        </div>';


        }



    }

}
