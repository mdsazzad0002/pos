<?php

namespace App\Http\Controllers;

use App\Models\address;
use App\Models\User;
use App\Models\branch;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;

class userController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $i = 0;
        if($request->ajax()){
            if(auth()->user()->hasRole('superadmin')){
                $user_list = User::query();
            }else{
                $branchIds = explode(',', auth()->user()->branch_id);
                $user_list = User::query()->whereIn('branch_id', $branchIds);
            }
            return DataTables::of($user_list)
                ->addColumn('role', function ($raw) {
                    $roles =  implode(', ',json_decode($raw->getRoleNames()));

                    if(auth()->user()->can('user rolechange') == true && $raw->id != 1){
                        $edit_route = route('admin.user.role.edit', $raw->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-lg modal-dialog-centered'
                        data-title='$raw->name Role change'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit ".$roles."</button>";
                        return $edit_button;
                    }else{
                        return $roles;
                    }
                })

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.user.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog='modal-lg modal-dialog-centered'
                    data-title='View $row->name'
                    onclick='button_ajax(this)'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.user.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.user.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-lg modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if ($row->id != 1) {
                        if (auth()->user()->can('user edit') == true) {
                            $return_data = $edit_button . '&nbsp;';
                        }

                        if (auth()->user()->can('user delete') == true) {
                            $return_data .= $delete_button;
                        }
                    }
                    return $return_data;


                })
                ->rawColumns(['role', 'action', 'view'])
                ->make(true);
        }
        return view('admin.user.index');
    }

    /**
     * Show the form for Usereating a new resource.
     */
    public function create()
    {
        $roles = Role::get();
        $branchs = branch::get();
        return view('admin.user.partials.create', compact('roles', 'branchs'));
    }

    /**
     * Store a newly Usereated resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'email'=>'required|unique:users,email',
            'password'=>'required',
            'c_password'=>'required',
            'name'=>'required',
        ]);


        $user_create = new User;
        $user_create->name = $request->name;
        $user_create->email  = $request->email;

        if($request->password != $request->c_password){

            return json_encode([
                'title'=>'Confirm Password  Not Match',
                'type'=>'error',
                'refresh'=>'false',
            ]);
        }
        $user_create->password  = Hash::make($request->password);

        $user_create->save();

        if(!$request->has('type_of_user')){
            $request['type_of_user'] = 'user_create';
        }

       $user_update = $this->update($request, $user_create);
       return $user_update;


    }

    /**
     * Display the specified resource.
     */
    public function show(User $User)
    {

        return view('admin.user.partials.view', compact('User'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(User $User)
    {
        $roles = Role::get();
        $branchs = branch::get();
        return view('admin.user.partials.edit', compact('User','roles', 'branchs'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $User)
    {
        $request->validate([
            'name'=>'required',
            'email'=>'required',
        ]);


        if($request->has('name')){
            $User->name = $request->name;
        }

        if ($request->password == $request->c_password && $request->password != '') {
            $User->password = Hash::make($request->password);
        }


        if($request->has('prefix')){
            $User->prefix = $request->input('prefix');
        }
        if($request->has('father')){
            $User->father = $request->input('father');
        }
        if($request->has('nid')){
            $User->nid = $request->input('nid');
        }

        if($request->has('religion')){
            $User->religion = $request->input('religion');
        }


        if($request->has('salary') && $request->salary != null && $request->salary != 0){
            $User->salary = $request->input('salary');
        }elseif($request->has('sales_status') && $request->has('sales_status') == 1){
            $User->sales_commission_present = $request->input('sales_commision_persent', 0); // Default value if not provided
        }
        if($request->has('sales_status')){
             $User->sales_status = $request->input('sales_status', 0); // Default value if not provided
        }
        if($request->has('designation')){
            $User->designation = $request->input('designation');
        }
        if($request->has('branch_id')){
            $User->branch_id = implode(',',$request->input('branch_id'));
        }
        if($request->has('joining_date')){
            $User->designation = $request->input('joining_date');
        }

        if($request->has('status')){
            $User->designation = $request->input('status');
        }
        if($request->has('nationality')){
            $User->nationality = $request->input('nationality');
        }
        if($request->has('birth')){
            $User->designation = $request->input('birth');
        }
        if($request->has('blood_group')){
            $User->designation = $request->input('blood_group');
        }
        if($request->has('mobile_number')){
            $User->designation = $request->input('designation');
        }
        if($request->has('alt_mobile_number')){
            $User->designation = $request->input('alt_mobile_number');
        }
        if($request->has('family_mobile_number')){
            $User->designation = $request->input('family_mobile_number');
        }
        if($request->has('account_tax_payer_id')){
            $User->account_tax_payer_id = $request->input('account_tax_payer_id');
        }
        if($request->has('gender')){
            $User->gender = $request->input('gender');
        }
        if($request->has('marital_status')){
            $User->gender = $request->input('marital_status');
        }

        // if(){

        // }

        if($request->has('email')){
            $check_email = User::where('email', $request->email)->whereNot('email', $User->email)->count();

            if($check_email == 0){
                $User->email = $request->email;
            }
        }

        $User->save();

        if($request->has('role_id')){
            $this->assingRole($request->role_id, $User);
        }


        $address_data = new AddressController();
        $address_data =  $address_data->store($request, $User);


        $contact_data = new ContactController();
        $contact_data =  $contact_data->store($request, $User);


        $payment_data = new PaymentMethodController();
        $payment_data =  $payment_data->store($request, $User);





        if($address_data){
            dd($request);
        }


        return json_encode([
            'title'=>$request->type_of_user == 'user_create' ? 'Updated User' : ($request->role == 'sales_partner' ? 'Successfully created commission agent' : 'Successfully  Updated User'),
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }



    public function delete(User $user){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(User $User)
    {
        if($User->id == 1){
            return json_encode([
                'title'=>'Super admin cannot deleted',
                'type'=>'failed',
                'refresh'=>'false',
            ]);
        }else{
            $User->delete();
            return json_encode([
                'title'=>'Successfully  Deleted User',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }

    }

    public function assingRole(Request $request,User $user){

        if($request->role_id == null){
            $requested_role = [];
        }else{
            $requested_role = Role::whereIn('id', $request->role_id)->get();
        }


        $user->syncRoles($requested_role);
        return json_encode([
            'title'=>'Successfully  Changed Role',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }
    public function userroleedit(Request $request,  User $user){
        $roles = Role::get();

        return view('admin.user.partials.role_edit', compact('roles', 'user'));
    }
}
