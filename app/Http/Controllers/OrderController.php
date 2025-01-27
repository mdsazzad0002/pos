<?php

namespace App\Http\Controllers;

use App\Models\order;
use App\Models\OrderEvent;
use App\Models\OrderStatus;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Models\product;
use Illuminate\Support\Facades\Validator;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            $order = order::leftJoin('customers', 'customers.id', '=', 'orders.customer_id')
            ->select('orders.*', 'customers.name as customer_name', 'customers.phone as customer_phone');
            return DataTables::make($order)



                ->addColumn('order_status', function ($row) {
                  $order_event = OrderEvent::where('order_id', $row->id)->latest()->first();
                  if($order_event){
                    return $order_event->status_data->name;
                  }else{
                    return 'Unread';
                  }

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
                    $edit_button =  "<a class='btn btn-warning ' href='$edit_route'>Edit</a>";

                    $view_route = route('admin.order.show', $row->id);
                    $view_button = " <button class='btn btn-primary '
                    data-dialog='modal-lg modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='Info #ID".$row->order_id."'
                    data-href='$view_route'>View</button>";


                    $update_status_route = route('admin.order.update_status', $row->id);
                    $update_status_button = " <button class='btn btn-primary '
                    data-dialog='modal-lg modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='info #ID".$row->order_id."'
                    data-href='$update_status_route'>Update Status </button>";


                    $return_data = '';
                    if(auth()->user()->can('order edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                        $return_data .= $update_status_button. '&nbsp;';
                    }

                    if(auth()->user()->can('order delete') == true){
                            $return_data .= $delete_button;
                    }
                    if(auth()->user()->can('order read') == true){
                            $return_data .= $view_button;
                    }




                    return $return_data;


                })
                ->rawColumns(['action' ,'order_status'])
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
        $quantities = $request->quantity;
        $product_json = [];
        $product = product::whereIn('id', $request->productId)->get();

        foreach($product as $key => $items){
            $items['order_quantity'] = $this->getProductIdsByQuantity($items->id, $request->productId, $request->quantity);
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
        $quantities = $request->quantity;
        $product_json = [];
        $product = product::whereIn('id', $request->productId)->get();

        foreach($product as $key => $items){
            $items['order_quantity'] = $this->getProductIdsByQuantity($items->id, $request->productId, $request->quantity);
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


    public function update_status(Request $request, order $order){

        $statuses = OrderStatus::get();

        return view('admin.order.update_status', compact('order', 'statuses'));
    }
    public function update_status_post(Request $request, order $order){
        // return $request->all();
        $validator = Validator::make($request->all(), [
            'status' => 'required',
            'note' => 'nullable|string',

        ]);
        $validator->validate();

        $order_event = OrderEvent::where('order_id', $order->id)->latest()->first();
        if($order_event){
            if($order_event->status_id == $request->status){
                return json_encode([
                    'title'=>'Already latest assigned',
                    'type'=>'error',
                    'refresh'=>'false',
                ]);

            }else{
                $order_event = new OrderEvent();
            }
        }else{
            $order_event = new OrderEvent();
        }
        $order_event->status_id = $request->status;
        $order_event->order_id = $request->order->id;
        $order_event->note = $request->note;
        $order_event->creator = auth()->user()->id;
        $order_event->updater = auth()->user()->id;
        $order_event->save();

        return json_encode([
            'title'=>'Successfully Changed status',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

}
