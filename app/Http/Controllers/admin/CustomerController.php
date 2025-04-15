<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Customer as customer;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Auth;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(customer::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.customer.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.customer.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    
                    $login_button = "<a href='".route('admin.customer.login', $row->id)."' class='btn btn-info '>Login</a>";

                    $edit_route = route('admin.customer.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    $return_data .= $login_button.'&nbsp;';
                    if(auth()->user()->can('customer edit')==true){
                        $return_data .= $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('customer delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.customer.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.customer.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'area' => 'required |integer'
        ]);
        $customer = new customer;
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->location = $request->location;
        $customer->area = $request->area;
        $customer->prev_due = $request->prev_due;

        $customer->shop_phone = $request->shop_phone;
        $customer->shop_address = $request->shop_address;
        $customer->shop_name = $request->shop_name;

        $customer->upload_id =$request->image ?? 0;


        $customer->creator = auth()->user()->id ?? 0;

        $customer->save();


        return json_encode([
            'title'=>'Successfully  Created Customer',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(customer $customer)
    {
        return view('admin.customer.partials.view', compact('customer'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(customer $customer)
    {
        return view('admin.customer.partials.edit', compact('customer'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, customer $customer)
    {
        $request->validate([
            'area' => 'required|integer'
        ]);
        $customer->name = $request->name;
        $customer->email = $request->email;
        $customer->phone = $request->phone;
        $customer->location = $request->location;
        $customer->area = $request->area;
        $customer->prev_due = $request->prev_due;

        $customer->shop_phone = $request->shop_phone;
        $customer->shop_address = $request->shop_address;
        $customer->shop_name = $request->shop_name;

        $customer->creator = auth()->user()->id ?? 0;
        $customer->upload_id =$request->image ?? 0;
        $customer->save();

        return json_encode([
            'title'=>'Successfully  Updated Customer',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(customer $customer){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(customer $customer)
    {

        $customer->delete();
        return json_encode([
            'title'=>'Successfully  Delete Customer',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getCustomer(Request $request)
    {
        $data_result = customer::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->limit(10)->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }

    public function login(Request $request,  $customer){
     
        if($customer){

        $customer = customer::find($customer);
        if(!$customer){
            return back();
        }

         Auth::guard('customer')->login($customer);
          $profile_page =  \App\Models\Page::where('status', 1)->where('page_type', 'profile_dashboard')->first();
        //   dd($profile_page);
          return redirect($profile_page->slug);
        }
        return back();
      }
  
}
