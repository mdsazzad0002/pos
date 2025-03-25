<?php

namespace App\Http\Controllers;

use App\Models\Client;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(Client::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.client.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.client.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.client.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('client edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('client delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.client.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $client = null;
        return view('admin.client.partials.create_edit', compact('client'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
       $request['create']='Successfully Created';
     return   $this->update($request);
    }

    /**
     * Display the specified resource.
     */
    public function show(Client $client)
    {
        return view('admin.client.partials.view', compact('client'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Client $client)
    {

        return view('admin.client.partials.create_edit', compact('client'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,  $client = null)
    {

        if($client){
            $client = Client::find($client);
        }else{
            $client = new Client();
        }


        $client->name = $request->name;
        $client->creator = auth()->user()->id ?? 0;
        $client->upload_id = $request->image ?? 0;
        $client->status = $request->status;
        $client->save();

        return json_encode([
            'title'=> isset($request['create']) ? $request['create'] : 'Successfully Updated brand',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    

    public function delete(Client $client){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Client $client)
    {
        $client->delete();

        return json_encode([
            'title'=>'Successfully  Deleted client',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function getBrands(Request $request)
    {
        $data_result = Client::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
