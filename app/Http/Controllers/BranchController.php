<?php

namespace App\Http\Controllers;

use App\Models\branch;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class BranchController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        if($request->ajax()){
            $branch = branch::query();
            return DataTables::make($branch)
            ->addColumn('view', function ($row) {
                $view_route = route('admin.branch.show', $row->id);
                return "<button class='btn btn-primary '
                data-dialog=' modal-dialog-centered'
                onclick='button_ajax(this)'
                data-title='$row->name  info'
                data-href='$view_route'>View</button>";

            })
            ->addColumn('action', function ($row) {
                $delete_route = route('admin.branch.delete', $row->id);

                $delete_button =  "<button class='btn btn-danger '

                data-title='$row->name'
                onclick='button_ajax(this)'
                data-href='$delete_route'>Delete</button>";

                $edit_route = route('admin.branch.edit', $row->id);
                $edit_button =  "<button class='btn btn-warning '
                data-dialog='modal-dialog-centered'
                data-title='$row->name'
                onclick='button_ajax(this)'
                data-href='$edit_route'>Edit</button>";

                $return_data = '';
                if(auth()->user()->can('branch edit')==true){
                    $return_data = $edit_button. '&nbsp;';
                }

                if(auth()->user()->can('branch delete') == true){
                    $return_data .= $delete_button ;
                }

                return $return_data;


            })
            ->rawColumns(['action', 'view'])
            ->make(true);
        }
        return view('admin.branch.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.branch.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name'=> 'required','location'=> 'required']);

        $branch = new branch();
        $branch->name = $request->name;
        $branch->location = $request->location;
        $branch->creator = auth()->user()->id ?? 0;
        $branch->save();

        return json_encode([
            'title'=>'Successfully  Created Branch',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(branch $branch)
    {
        return view('admin.branch.partials.view', compact('branch'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(branch $branch)
    {
        return view('admin.branch.partials.edit', compact('branch'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, branch $branch)
    {
        $request->validate(['name'=> 'required', 'location'=> 'required']);

        
        $branch->name = $request->name;
        $branch->status = $request->status;
        $branch->creator = auth()->user()->id ?? 0;
        $branch->location = $request->location;
        $branch->save();

        return json_encode([
            'title'=>'Successfully  Updated Branch',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(branch $branch)
    {
        if($branch != null){
            $branch->delete();
        }

        return json_encode([
            'title'=>'Successfully  Deleted Branch',
            'type'=>'success',
            'refresh'=>'true',
        ]);

    }


    public function delete(branch $branch){
        return view('layout.admin.modal_content_delete');
    }


    /**
     * Summary of getbranchs
     * @param \Illuminate\Http\Request $request : q
     * @return bool|string(json)
     */

    public function getbranchs(Request $request)
    {
        $data_result = branch::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
