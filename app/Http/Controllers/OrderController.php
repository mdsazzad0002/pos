<?php

namespace App\Http\Controllers;

use App\Models\order;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Models\product;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(order::query())

                ->addColumn('name', function ($row) {
                    return $row->customer->name;

                })

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.order.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog='modal-lg modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })

                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.order.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.order.edit', $row->id);
                    $edit_button =  "<a class='btn btn-warning '


                    href='$edit_route'>Edit</a>";

                    $return_data = '';
                    if(auth()->user()->can('order edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('order delete') == true){
                            $return_data .= $delete_button;
                    }

                    return $return_data;


                })
                ->rawColumns(['name','action', 'view', ])
                ->make(true);
        }
        return view('admin.order.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.order.order_create.index');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function getProductIdsByQuantity($productId, $productIds, $quantities) {

        $result = 0;
        foreach ($productIds as $index => $items) {
            if ($items == $productId) {
                $result = $quantities[$index];
            }
        }

        return $result;
    }


    public function store(Request $request)
    {
        $request->validate([
            'customerID' => 'required'
        ]);



// Function to get product IDs by quantity

        $price = 0;
        $productIds = $request->productId;
        $quantities = $request->quantaty;
        $product_json = [];
        $product = product::whereIn('id', $request->productId)->get();

        foreach($product as $key => $items){
            $items['order_quantity'] = $this->getProductIdsByQuantity($items->id, $request->productId, $request->quantaty);
            $items['order_price'] = (int) $items->order_quantity * (int) $items->selling_price;

            $price += $items->order_price;
            $product_json[] = $items;

            $product_quantaty = product::find($items->id);
            $product_quantaty->quantity -= $items->order_quantity;
            $product_quantaty->save();

        }

        $order = new order;
        $order->customer_id = $request->customerID ;
        $order->order_id = time();;
        $order->product_ids = implode(',',$productIds);
        $order->product_json = json_encode($product_json);
        $order->delivery_status = 0;
        $order->price = $price;
        $order->quantity = array_sum($quantities);
        $order->quantitys = implode(',',$quantities);
        $order->cash_collection = $price;
        $order->save();



        return json_encode([
            'title'=>'Successfully  Created order',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(order $order)
    {
        return view('admin.order.partials.view', compact('order'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(order $order)
    {
        return view('admin.order.order_edit.index', compact('order'));
    }

    /**
     * Update the specified resource in storage.
     */

     public function old_product_quantity($order){
          // find product and previous quantity reorder
          $old_product_id = explode(',',$order->product_ids);
          $old_quantity = explode(',', $order->quantitys);
          foreach($old_product_id as $key => $items){
              $old_product_find =  product::find($items);
              $old_product_find->quantity += $old_quantity[$key];
              $old_product_find->save();
          }
          // find product and previous quantity reorder
     }



    public function update(Request $request, order $order)
    {
        $request->validate([
            'customerID' => 'required'
        ]);

        $this->old_product_quantity($order);




// Function to get product IDs by quantity

        $price = 0;
        $productIds = $request->productId;
        $quantities = $request->quantaty;
        $product_json = [];
        $product = product::whereIn('id', $request->productId)->get();

        foreach($product as $key => $items){
            $items['order_quantity'] = $this->getProductIdsByQuantity($items->id, $request->productId, $request->quantaty);
            $items['order_price'] = (int) $items->order_quantity * (int) $items->selling_price;

            $price += $items->order_price;
            $product_json[] = $items;

            $product_quantaty = product::find($items->id);
            $product_quantaty->quantity -= - $items->order_quantity ;
            $product_quantaty->save();

        }


        $order->customer_id = $request->customerID ;
        $order->order_id = time();;
        $order->product_ids = implode(',',$productIds);
        $order->product_json = json_encode($product_json);
        $order->delivery_status = 0;
        $order->price = $price;
        $order->quantity = array_sum($quantities);
        $order->quantitys = implode(',',$quantities);
        $order->cash_collection = $price;
        $order->save();





        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(order $order){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(order $order)
    {

        $this->old_product_quantity($order);
       $order->delete();

        return json_encode([
            'title'=>'Successfully  Deleted order',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    // public function getOrder(Request $request)
    // {
    //     $data_result = order::where(function($query) use ($request) {
    //         if ($request->has('q')) {
    //             $query->where('name', 'LIKE', '%' . $request->q . '%');
    //         }
    //     })->select('id', 'name as text')->get();

    //     $result_make = [];
    //     $result_make['items']=$data_result;

    //     return json_encode($result_make);

    // }
}
