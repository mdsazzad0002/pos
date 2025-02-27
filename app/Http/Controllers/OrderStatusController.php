<?php

namespace App\Http\Controllers;

use App\Models\OrderStatus;
use Illuminate\Http\Request;

class OrderStatusController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
      
        $order_status = OrderStatus::all();
        return view('admin.order_status.index', compact('order_status'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {  $orderStatus = null;
        $order_status_all = OrderStatus::all();
        return view('admin.order_status.partials.edit', compact('order_status_all','orderStatus'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request['create_data'] = true;
        return $this->update($request, null);
    }

    /**
     * Display the specified resource.
     */
    public function show(OrderStatus $orderStatus)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(OrderStatus $orderStatus)
    {
        $order_status_all = OrderStatus::all();
        return view('admin.order_status.partials.edit', compact('order_status_all', 'orderStatus'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,  $orderStatus)
    {
        $request->validate([
            'name' => 'required',
            'qty_status' => 'required',
        ]);

        if ($orderStatus == null) {
            $orderStatus = new OrderStatus;
        }else{
            $orderStatus = OrderStatus::find($orderStatus);
        }

        if ($orderStatus ) {
            $orderStatus->name = $request->name;
            $orderStatus->qty_status = $request->qty_status;
            $orderStatus->qty_add_remove = $request->qty_add_remove;
            $orderStatus->under_items = is_array($request->under_items) ? json_encode($request->under_items) : [];
            $orderStatus->save();
        }

        return json_encode([
            'title'=>$request->data_create ? 'Order Status Created Successfully' : 'Order Status Updated Successfully',
            'type'=>'success',
            'refresh'=>'false',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(OrderStatus $orderStatus)
    {
        //
    }
}
