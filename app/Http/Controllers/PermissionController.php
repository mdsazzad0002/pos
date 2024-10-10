<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Yajra\DataTables\DataTables;
use Spatie\Permission\Models\Role;

class PermissionController extends Controller
{
    public function index() {

        // $roles = role::latest()->get();
        if (request()->ajax()) {
            return DataTables::make(role::select('id', 'name'))
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.permission.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog='modal-lg modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='View $row->name'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('edit', function ($row) {
                    $delete_route = route('admin.permission.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.permission.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-lg modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';

                    if($row->id != 1){
                        if(auth()->user()->can('role edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        }

                        if(auth()->user()->can('role delete') == true){
                            $return_data .= $delete_button ;
                        }
                    }

                    return $return_data;


                })
                ->rawColumns(['edit', 'view'])
                ->make(true);
        }
        return view('admin.permission.index');
    }

    public function create() {

        $permissions = Permission::get()->groupBy(function ($item) {
            return explode(' ', $item->name)[0];
        });;
        return view('admin.permission.partials.create', compact('permissions'));
    }



    public function show( $role){
        $permissions = Role::find($role)->permissions->groupBy(function ($item) {
            return explode(' ', $item->name)[0];
        });;
        return view('admin.permission.partials.view', compact('permissions'));
    }

    public function store(Request $request) {
        // return $request;
        $request->validate([
            'role_name'=>'required',
        ]);
        $roles = Role::where('name', $request->role_name)->count();
        if($roles == 0){
            $role = Role::create(['name' => $request->role_name]);

            $permissions = Permission::whereIn('id', $request->input('permission'))->get();
            $role->syncPermissions($permissions);

            return json_encode([
                'title'=>'Successfully Role Created',
                'type'=>'success',
                'refresh'=>'true',
                'page'=>'false',
            ]);

        }else{
            return json_encode([
                'title'=>'Role Already Exists',
                'type'=>'error',
                'refresh'=>'false',
                'page'=>'false',
            ]);
        }



    }


    public function edit(Request $request, Role $permission) {

         $current_permission = $permission->permissions->pluck('id')->toArray();

         $permission_list = permission::all()->groupBy(function ($item) {
            return explode(' ', $item->name)[0];
        });

        return view('admin.permission.partials.edit', compact('permission_list', 'current_permission', 'permission'));
    }


    public function update(Request $request, Role $permission) {

        $request->validate([

        ]);

        $response_data = [];

        $roles = Role::where('name', $request->role_name)->count();
        if($roles == 1 && $permission->name == $request->role_name){


        }else if($roles == 0){
             // here is permission is role
            $permission->name = $request->role_name;
            $permission->save();

        }

        $permissions = Permission::whereIn('id', $request->input('permission'))->get();
        $permission->syncPermissions($permissions);
        return json_encode([
            'title'=>'Successfully  updated role',
            'type'=>'success',
            'refresh'=>'true',
            'page'=>'false',
        ]);

    }


    public function delete(Request $request, Role $role){
        // return $current_url = str_replace('delete','destory',$request->url());
        return view('layout.admin.modal_content_delete');

    }
    public function destroy(Role $permission) {

        $permission->delete();
        return json_encode([
            'title'=>'Successfully  Deleted role',
            'type'=>'success',
            'refresh'=>'true',
            'page'=>'false',
        ]);
    }

}
