<?php

namespace App\Http\Controllers;

use App\Models\product;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

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
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-lg  modal-dialog-scrollable modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

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
        return view('admin.product.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $product = new product;
        $product->name = $request->name;
        $product->sku = $request->sku;
        $product->selling_price = $request->selling_price;
        $product->category = $request->category;
        $product->brand = $request->brand;
        $product->unit = $request->unit;
        $product->alert_quantity = $request->alert_quantity;
        $product->description = $request->description;
        $product->for_selling = $request->for_selling;
        $product->weight = $request->weight;


        $product->creator = auth()->user()->id ?? 0;
        if($request->hasFile('image')){
            $product->upload_id = uploads($request->file('image'));
        }
        $product->slug = create_slug($request->name, 'product', 'slug');
        $product->save();


        return json_encode([
            'title'=>'Successfully  Created product',
            'type'=>'success',
            'refresh'=>'true',
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
        return view('admin.product.partials.edit', compact('product'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, product $product)
    {
        $product->name = $request->name;
        $product->sku = $request->sku;
        $product->selling_price = $request->selling_price;
        $product->category = $request->category;
        $product->brand = $request->brand;
        $product->unit = $request->unit;
        $product->alert_quantity = $request->alert_quantity;
        $product->description = $request->description;
        $product->for_selling = $request->for_selling;
        $product->weight = $request->weight;

        $product->creator = auth()->user()->id ?? 0;
        if($request->hasFile('image')){
            $product->upload_id = uploads($request->file('image'), $product->upload_id);
        }
        $product->save();


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
        asset_unlink($product->upload_id);
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
