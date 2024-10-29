<?php

namespace App\Http\Controllers;

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
            'email'=>'required',
            'password'=>'required',
            'name'=>'required',
        ]);

        $request->validate(['email' => 'unique:users,email']);
        $user_create = new User;
        $user_create->name = $request->name;
        $user_create->email = $request->email;
        $user_create->slug = Str::slug($request->name . strtotime("now"));
        $user_create->designation = $request->designation;
        $user_create->password = Hash::make($request->password);

        $user_create->prefix = $request->input('prefix');
        $user_create->salary = $request->input('salary');
        $user_create->branch_id = implode(',',$request->input('branch_id'));
        $user_create->joining_date = $request->input('joining_date');

        $user_create->status = $request->input('status', 0); // Default value if not provided
        $user_create->sales_status = $request->input('sales_status', 0); // Default value if not provided
        $user_create->birth = $request->input('birth');
        $user_create->blood_group = $request->input('blood_group');
        $user_create->mobile_number = $request->input('mobile_number');
        $user_create->alt_mobile_number = $request->input('alt_mobile_number');
        $user_create->family_mobile_number = $request->input('family_mobile_number');
        $user_create->present_address = $request->input('paresent_address');
        $user_create->p_present_address = $request->input('p_paresent_address');

        $user_create->facebook = $request->input('facebook');
        $user_create->twitter = $request->input('twitter');
        $user_create->youtube = $request->input('youtube');
        $user_create->linkedin = $request->input('linkedin');
        $user_create->whatsapp = $request->input('whatsapp');
        $user_create->telegram = $request->input('telegram');
        $user_create->pintarest = $request->input('pintarest');

        $user_create->account_holder_name = $request->input('account_holder_name');
        $user_create->account_no = $request->input('account_no');
        $user_create->account_provider = $request->input('account_provider');
        $user_create->account_identifier_code = $request->input('account_identifier_code');
        $user_create->account_branch = $request->input('account_branch');
        $user_create->account_tax_payer_id = $request->input('account_tax_payer_id');
        $user_create->gender = $request->input('gender', 0); // Default value if not provided
        $user_create->marital_status = $request->input('marital_status', 0); // Default value if not provided
        $user_create->sales_commission_present = $request->input('sales_commision_persent', 0); // Default value if not provided

        if($request->password != $request->c_password){
            return json_encode([
                'title'=>'Confirm password does not match',
                'type'=>'error',
                'refresh'=>'false',
            ]);
        }

        $user_create->save();

        $this->assingRole($request, $user_create);

        return json_encode([
            'title'=>'Successfully  Created User',
            'type'=>'success',
            'refresh'=>'true',
        ]);
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

        $check_email = User::where('email', $request->email)->whereNot('email', $User->email)->count();
        $User->name = $request->name;
        $User->email = $request->email;

        if ($request->password == $request->c_password && $request->password != '') {
            $User->password = Hash::make($request->password);
        }

        $User->prefix = $request->input('prefix');
        $User->salary = $request->input('salary');
        $User->designation = $request->input('designation');
        $User->branch_id = implode(',',$request->input('branch_id'));
        $User->joining_date = $request->input('joining_date');

        $User->status = $request->input('status', 0); // Default value if not provided
        $User->sales_status = $request->input('sales_status', 0); // Default value if not provided
        $User->birth = $request->input('birth');
        $User->blood_group = $request->input('blood_group');
        $User->mobile_number = $request->input('mobile_number');
        $User->alt_mobile_number = $request->input('alt_mobile_number');
        $User->family_mobile_number = $request->input('family_mobile_number');
        $User->present_address = $request->input('paresent_address');
        $User->p_present_address = $request->input('p_paresent_address');

        $User->facebook = $request->input('facebook');
        $User->twitter = $request->input('twitter');
        $User->youtube = $request->input('youtube');
        $User->linkedin = $request->input('linkedin');
        $User->whatsapp = $request->input('whatsapp');
        $User->telegram = $request->input('telegram');
        $User->pintarest = $request->input('pintarest');

        $User->account_holder_name = $request->input('account_holder_name');
        $User->account_no = $request->input('account_no');
        $User->account_provider = $request->input('account_provider');
        $User->account_identifier_code = $request->input('account_identifier_code');
        $User->account_branch = $request->input('account_branch');
        $User->account_tax_payer_id = $request->input('account_tax_payer_id');
        $User->gender = $request->input('gender', 0); // Default value if not provided
        $User->marital_status = $request->input('marital_status', 0); // Default value if not provided
        $User->sales_commission_present = $request->input('sales_commision_persent', 0); // Default value if not provided

        if($check_email == 0){
            $User->email = $request->email;
        }
        $User->save();

        $this->assingRole($request, $User);

        return json_encode([
            'title'=>'Successfully  Updated User',
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
