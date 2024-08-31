<?php

namespace App\Http\Controllers;

use App\Models\User;
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
            $user_list = User::query();
            return DataTables::of($user_list)
                ->addColumn('role', function ($raw) {
                    $roles =  implode(', ',json_decode($raw->getRoleNames()));

                    if(auth()->user()->can('user rolechange') == true){
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
                    data-title='$row->name'
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
                    if(auth()->user()->can('user edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('user delete') == true){
                        $return_data .= $delete_button ;
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
        return view('admin.user.partials.create', compact('roles'));
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
        $user_create->password = Hash::make($request->password);
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
        return view('admin.user.partials.edit', compact('User','roles'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $User)
    {
        $check_email = User::where('email', $request->email)->whereNot('email', $User->email)->count();
        $User->name =$request->name;
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
