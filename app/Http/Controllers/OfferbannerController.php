<?php

namespace App\Http\Controllers;

use App\Models\OfferBanner as offerbanner;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class OfferbannerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(offerbanner::query())

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.offerbanner.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.offerbanner.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.offerbanner.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    // if(auth()->user()->can('offerbanner edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    // }

                    // if(auth()->user()->can('offerbanner delete') == true){
                        $return_data .= $delete_button ;
                    // }

                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.offerbanner.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $offerbanner = null;
        return view('admin.offerbanner.partials.create', compact('offerbanner'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            // 'area' => 'required |integer'
        ]);

        $request['store_date'] = true;
         return  $this->update($request);

    }

    /**
     * Display the specified resource.
     */
    public function show(offerbanner $offerbanner)
    {

        return view('admin.offerbanner.partials.view', compact('offerbanner'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(offerbanner $offerbanner)
    {
        return view('admin.offerbanner.partials.create', compact('offerbanner'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,  $offerbanner = null)
    {
        $request->validate([
            'type' => 'required',
        ]);

        if($offerbanner != null){
            $offerbanner = offerbanner::find($offerbanner);
        }else{
            $offerbanner = new offerbanner();

        }


        $offerbanner->title = $request->title;
        $offerbanner->subtitle = $request->subtitle;
        $offerbanner->link = $request->link;
        $offerbanner->image1 = $request->image1;
        $offerbanner->image2 = $request->image2;
        $offerbanner->image3 = $request->image3;
        $offerbanner->status = $request->status ?? 0;

        $offerbanner->type = $request->type; //  1 => feature card 2 => full banner 3 => countdown
        $offerbanner->save();

        if($request->has('store_date')){
            return json_encode([
                'title'=>'Successfully  Created offerbanner',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }else{
            return json_encode([
                'title'=>'Successfully  Updated offerbanner',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }
    }

    public function delete(offerbanner $offerbanner){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(offerbanner $offerbanner)
    {

        $offerbanner->delete();
        return json_encode([
            'title'=>'Successfully  Delete offerbanner',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getofferbanner(Request $request)
    {
        $data_result = offerbanner::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->limit(10)->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
