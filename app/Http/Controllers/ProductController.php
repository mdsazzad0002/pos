<?php

namespace App\Http\Controllers;

use App\Models\product;
use App\Models\VariantOption;
use Illuminate\Http\Request;
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
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.product.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.product.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.product.edit', $row->id);
                    $edit_button =  "<a class='btn btn-warning' href='$edit_route'>Edit</a>";

                    $return_data = '';
                    if(auth()->user()->can('product edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('product delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
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
        $product = new product;
        $product->name = $request->name;
        $product->product_id = create_slug('P', 'product', 'product_id');
        $product->slug = create_slug($request->name, 'product', 'slug');

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
        $product->route = $request->route;
        $product->feature = $request->feature;
        $product->service = $request->service;
        $product->status = $request->status;
        $product->for_selling = $request->for_selling;


        $product->upload_id = $request->image;
        if($request->has('images_multiple')){
            $product->uploads_id = implode(',',$request->images_multiple);
        }


        $product->short_description = $request->short_description;
        $product->description = $request->description;
        $product->youtube_video = $request->youtube_video;
        $product->landing_page_bg = $request->landing_page_bg;
        $product->landing_page_color = $request->landing_page_color;
        $product->variant_on = $request->variant_on;


        $product->creator = auth()->user()->id ?? 0;
         $product->save();



        // working on variant product
        if ($request->has('variant_on') && $request->variant_on == 1) {
            $existingVariants = VariantOption::where('product_id', $product->id)->get();

            $existingOptionNames = $existingVariants->pluck('name')->toArray();

            // Array to hold the option names from the request
            $requestOptionNames = $request->variant_key;


            foreach ($requestOptionNames as $key => $items) {

                VariantOption::updateOrCreate(
                    [
                        'product_id' => $product->id,
                        'name' => $items, // Use this for finding existing options
                    ],
                    [

                        'old_price' => $request->old_price_v[$key],
                        'selling_price' => $request->old_price_v[$key],
                        'creator' => auth()->user()->id  ?? 0,
                    ]

                );
            }

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



        return json_encode([
            'title'=>'Successfully  Created product',
            'type'=>'success',
            'refresh'=>'false',
        ]);


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
    public function update(Request $request, product $product)
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
        $product->name = $request->name;
        $product->slug = create_slug($request->name, 'product', 'slug');

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
        $product->route = $request->route;
        $product->feature = $request->feature;
        $product->service = $request->service;
        $product->status = $request->status;
        $product->for_selling = $request->for_selling;


        $product->upload_id = $request->image;
        if($request->has('images_multiple')){
            $product->uploads_id = implode(',',$request->images_multiple);
        }


        $product->short_description = $request->short_description;
        $product->description = $request->description;
        $product->youtube_video = $request->youtube_video;
        $product->landing_page_bg = $request->landing_page_bg;
        $product->landing_page_color = $request->landing_page_color;
        $product->variant_on = $request->variant_on;


        $product->creator = auth()->user()->id ?? 0;
         $product->save();



        // working on variant product
        if ($request->has('variant_on') && $request->variant_on == 1) {

            $existingVariants = VariantOption::where('product_id', $product->id)->get();

            $existingOptionNames = $existingVariants->pluck('name')->toArray();

            // Array to hold the option names from the request
            $requestOptionNames = $request->variant_key;


            foreach ($requestOptionNames as $key => $items) {

                VariantOption::updateOrCreate(
                    [
                        'product_id' => $product->id,
                        'name' => $items, // Use this for finding existing options
                    ],
                    [

                        'old_price' => $request->old_price_v[$key],
                        'selling_price' => $request->old_price_v[$key],
                        'creator' => auth()->user()->id  ?? 0,
                    ]

                );
            }

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


        return json_encode([
            'title'=>'Successfully  Updated product',
            'type'=>'success',
            'refresh'=>'true',
        ]);
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
        })->select('id', 'name as text', 'selling_price as price')->limit(10)->get();

        // Debugging the query
        // dd($data_result);

        $result_make = [];
        $result_make['items']=$data_result;

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
}
