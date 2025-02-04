<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\DataTables;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            $customer = Customer::query()->orderBy('id', 'desc');
            return DataTables::make(  $customer)
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

                    $edit_route = route('admin.customer.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('customer edit')==true){
                        $return_data = $edit_button. '&nbsp;';
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

     public function customerStore(Request $request)
     {
        // return $request->all();
         // Validate the incoming request
         $validated = $request->validate([
             'name' => 'required|string|max:255',
             'email' => 'required|email|unique:customers,email',
             'phone' => 'nullable|string|max:20',
             'password' => 'required|min:6',
         ]);

         // Create the customer
         $customer = Customer::create([
             'name' => $validated['name'],
             'email' => $validated['email'],
             'phone' => $validated['phone'],
             'password' => bcrypt($validated['password']),
         ]);

         // Login the customer
         auth()->guard('customer')->login( $customer);

         // Return a successful response or redirect to a desired route
         return response()->json([
             'title' => 'Successfully Customer Created',
             'type' => 'success',
             'page' => 'false',
         ]);
     }





    public function customerLogin(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|min:6',
        ]);

        $credentials = $request->only('email', 'password');

        if (Auth::guard('customer')->attempt($credentials)) {
            return response()->json([
                'title'=>'Successfully Customer Created',
                'type'=>'success',
                'page'=>'false',
            ],200);
        }

        return response()->json([
            'success' => false,
            'message' => 'Invalid login credentials.',
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Customer $customer)
    {
        return view('admin.customer.partials.view', compact('customer'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Customer $customer)
    {
        return view('admin.customer.partials.edit', compact('customer'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Customer $customer)
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

    public function delete(Customer $customer){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Customer $customer)
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
        $data_result = Customer::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->limit(10)->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }


    public function customer_profile_pic(Request $request, Customer $customer){
        $customer->upload_id = uploads($request->profile_pic, $customer->upload_id);
        $customer->save();
        return back();
    }


    public function customer_logout(){
        auth()->guard('customer')->logout();
        return back();
    }
}
