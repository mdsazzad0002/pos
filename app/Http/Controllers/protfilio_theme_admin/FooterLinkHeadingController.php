<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\FooterLinkHeading;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Str;
use Yajra\DataTables\Facades\DataTables;

class  FooterLinkHeadingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(FooterLinkHeading::query())


                ->addColumn('view', function ($row) {
                    $view_route = route('admin.footerlinkheading.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {

                        $delete_route = route('admin.footerlinkheading.delete', $row->id);

                        $delete_button =  "<button class='btn btn-danger '

                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $edit_route = route('admin.footerlinkheading.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";

                        $return_data = '';
                        if(auth()->user()->can('footerlinkheading edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        }

                        if(auth()->user()->can('footerlinkheading delete') == true){
                            $return_data .= $delete_button ;
                        }




                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.protfilio_theme.footerlinkheading.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.protfilio_theme.footerlinkheading.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $footerlinkheading =  new FooterLinkHeading;

        $footerlinkheading->title =  $request->title;
        $footerlinkheading->status = $request->status;

        $footerlinkheading->save();

        return json_encode([
            'title'=>'Successfully  Created footerlinkheading',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(FooterLinkHeading $footerlinkheading)
    {
        return view('admin.protfilio_theme.footerlinkheading.partials.view', compact('footerlinkheading'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(FooterLinkHeading $footerlinkheading)
    {
        return view('admin.protfilio_theme.footerlinkheading.partials.edit', compact('footerlinkheading'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, FooterLinkHeading $footerlinkheading)
    {

        $footerlinkheading->title =  $request->title;
        $footerlinkheading->status = $request->status;

        $footerlinkheading->save();



        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(FooterLinkHeading $footerlinkheading){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(FooterLinkHeading $footerlinkheading)
    {

       $footerlinkheading->delete();

        return json_encode([
            'title'=>'Successfully  Deleted footerlinkheading',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getFooterlinkheading(Request $request)
    {
        $data_result = FooterLinkHeading::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('title', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'title as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
