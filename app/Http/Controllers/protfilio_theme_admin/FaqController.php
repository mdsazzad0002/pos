<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\faq;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Str;
use Yajra\DataTables\Facades\DataTables;

class FaqController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(Faq::query())


                ->addColumn('image', function ($row) {
                   return  "<i  class='".$row->icon_class."></i>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.faq.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {

                        $delete_route = route('admin.faq.delete', $row->id);

                        $delete_button =  "<button class='btn btn-danger '

                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $edit_route = route('admin.faq.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";

                        $return_data = '';
                        if(auth()->user()->can('faq edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        }

                        if(auth()->user()->can('faq delete') == true){
                            $return_data .= $delete_button ;
                        }




                    return $return_data;


                })
                ->rawColumns(['image','action', 'view'])
                ->make(true);
        }
        return view('admin.protfilio_theme.faq.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.protfilio_theme.faq.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $faq =  new Faq;
        $faq->title =  $request->title;
        $faq->answer =  $request->answer;
        $faq->status = $request->status;
        $faq->save();

        return json_encode([
            'title'=>'Successfully  Created faq',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(Faq $faq)
    {
        return view('admin.protfilio_theme.faq.partials.view', compact('faq'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(faq $faq)
    {
        return view('admin.protfilio_theme.faq.partials.edit', compact('faq'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Faq $faq)
    {

        $faq->title =  $request->title;
        $faq->answer =  $request->answer;
        $faq->status = $request->status;
        $faq->save();



        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(Faq $faq){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Faq $faq)
    {

       $faq->delete();

        return json_encode([
            'title'=>'Successfully  Deleted faq',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getFaq(Request $request)
    {
        $data_result = Faq::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('title', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'title as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
