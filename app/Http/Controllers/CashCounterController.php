<?php

namespace App\Http\Controllers;

use App\Models\cashcounter;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class CashCounterController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        if($request->ajax()){
            $cashcounter = cashcounter::Join('branches', 'cash_counters.branch_id', 'branches.id')
            ->select('cash_counters.*', 'branches.name as branch_name');

            return DataTables::make($cashcounter)
            ->addColumn('view', function ($row) {
                $view_route = route('admin.cashcounter.show', $row->id);
                return "<button class='btn btn-primary '
                data-dialog=' modal-dialog-centered'
                onclick='button_ajax(this)'
                data-title='$row->name  info'
                data-href='$view_route'>View</button>";

            })
            ->addColumn('action', function ($row) {
                $delete_route = route('admin.cashcounter.delete', $row->id);

                $delete_button =  "<button class='btn btn-danger '

                data-title='$row->name'
                onclick='button_ajax(this)'
                data-href='$delete_route'>Delete</button>";

                $edit_route = route('admin.cashcounter.edit', $row->id);
                $edit_button =  "<button class='btn btn-warning '
                data-dialog='modal-dialog-centered'
                data-title='$row->name'
                onclick='button_ajax(this)'
                data-href='$edit_route'>Edit</button>";

                $return_data = '';
                if(auth()->user()->can('cashcounter edit')==true){
                    $return_data = $edit_button. '&nbsp;';
                }

                if(auth()->user()->can('cashcounter delete') == true){
                    $return_data .= $delete_button ;
                }

                return $return_data;


            })
            ->rawColumns(['action', 'view'])
            ->make(true);
        }
        return view('admin.cashcounter.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.cashcounter.partials.create_edit');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name'=> 'required','branch'=> 'required']);

        $cashcounter = new cashcounter();
        $cashcounter->name = $request->name;
        $cashcounter->branch_id = $request->branch;
        $cashcounter->creator = auth()->user()->id ?? 0;
        $cashcounter->save();

        return json_encode([
            'title'=>'Successfully  Created cashcounter',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(cashcounter $cashcounter)
    {
        return view('admin.cashcounter.partials.view', compact('cashcounter'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(cashcounter $cashcounter)
    {
        return view('admin.cashcounter.partials.create_edit', compact('cashcounter'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, cashcounter $cashcounter)
    {
        $request->validate(['name'=> 'required','branch'=> 'required']);


        $cashcounter->name = $request->name;
        $cashcounter->status = $request->status;
        $cashcounter->creator = auth()->user()->id ?? 0;
        $cashcounter->branch_id = $request->branch;
        $cashcounter->save();

        return json_encode([
            'title'=>'Successfully  Updated cashcounter',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(cashcounter $cashcounter)
    {
        if($cashcounter != null){
            $cashcounter->delete();
        }

        return json_encode([
            'title'=>'Successfully  Deleted cashcounter',
            'type'=>'success',
            'refresh'=>'true',
        ]);

    }


    public function delete(cashcounter $cashcounter){
        return view('layout.admin.modal_content_delete');
    }


    /**
     * Summary of getcashcounters
     * @param \Illuminate\Http\Request $request : q
     * @return bool|string(json)
     */

    public function getcashcounters(Request $request)
    {
        $data_result = cashcounter::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
