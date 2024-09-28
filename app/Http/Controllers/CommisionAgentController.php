<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

use Yajra\DataTables\Facades\DataTables;

class CommisionAgentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $i = 0;
        if($request->ajax()){
            if(auth()->user()->hasRole('superadmin')){
                $user_list = User::query()->where('sales_status', 1);
            }else{
                $branchIds = explode(',', auth()->user()->branch_id);
                $user_list = User::query()->whereIn('branch_id', $branchIds)->where('sales_status', 1);
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

}
