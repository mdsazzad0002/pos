<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\FooterLinkSubHeading;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Str;
use Yajra\DataTables\Facades\DataTables;

class FooterLinkSubHeadingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            $query = FooterLinkSubHeading::leftJoin('footer_link_headings', 'footer_link_sub_headings.heading_id', '=', 'footer_link_headings.id')
            ->select('footer_link_sub_headings.*', 'footer_link_headings.title as heading');

            return DataTables::of($query)


                ->addColumn('view', function ($row) {
                    $view_route = route('admin.footerlinksubheading.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {

                        $delete_route = route('admin.footerlinksubheading.delete', $row->id);

                        $delete_button =  "<button class='btn btn-danger '

                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $edit_route = route('admin.footerlinksubheading.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";

                        $return_data = '';
                        if(auth()->user()->can('footerlinksubheading edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        }

                        if(auth()->user()->can('footerlinksubheading delete') == true){
                            $return_data .= $delete_button ;
                        }




                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.protfilio_theme.footerlinksubheading.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.protfilio_theme.footerlinksubheading.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $footerlinksubheading =  new footerlinksubheading;
        $footerlinksubheading->title =  $request->title;
        $footerlinksubheading->icon =  $request->icon;
        $footerlinksubheading->url = $request->url;
        $footerlinksubheading->status = $request->status;
        $footerlinksubheading->save();

        return json_encode([
            'title'=>'Successfully  Created footerlinksubheading',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(FooterLinkSubHeading $footerlinksubheading)
    {
        return view('admin.protfilio_theme.footerlinksubheading.partials.view', compact('footerlinksubheading'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(footerlinksubheading $footerlinksubheading)
    {
        return view('admin.protfilio_theme.footerlinksubheading.partials.edit', compact('footerlinksubheading'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, FooterLinkSubHeading $footerlinksubheading)
    {

        $footerlinksubheading->title =  $request->title;
        $footerlinksubheading->icon =  $request->icon;
        $footerlinksubheading->url = $request->url;
        $footerlinksubheading->status = $request->status;
        $footerlinksubheading->heading_id = $request->heading_id;
        $footerlinksubheading->save();



        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(FooterLinkSubHeading $footerlinksubheading){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(FooterLinkSubHeading $footerlinksubheading)
    {

       $footerlinksubheading->delete();

        return json_encode([
            'title'=>'Successfully  Deleted footerlinksubheading',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getFooterlinksubheading(Request $request)
    {
        $data_result = FooterLinkSubHeading::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
