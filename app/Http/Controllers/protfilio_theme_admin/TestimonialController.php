<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\testimonial;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;

class TestimonialController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(Testimonial::query())


                ->addColumn('image', function ($row) {
                   return  $view_route = "<img style='max-width:100px' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.testimonial.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {

                        $delete_route = route('admin.testimonial.delete', $row->id);

                        $delete_button =  "<button class='btn btn-danger '

                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $edit_route = route('admin.testimonial.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";

                        $return_data = '';
                        if(auth()->user()->can('testimonial edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        }

                        if(auth()->user()->can('testimonial delete') == true){
                            $return_data .= $delete_button ;
                        }




                    return $return_data;


                })
                ->rawColumns(['image','action', 'view'])
                ->make(true);
        }
        return view('admin.protfilio_theme.testimonial.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.protfilio_theme.testimonial.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $testimonial =  new testimonial;
        $testimonial->name =  $request->name;
        $testimonial->upload_id =  $request->image;
        $testimonial->designation = $request->designation;
        $testimonial->description = $request->description;
        $testimonial->save();

        return json_encode([
            'title'=>'Successfully  Created testimonial',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(testimonial $testimonial)
    {
        return view('admin.protfilio_theme.testimonial.partials.view', compact('testimonial'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(testimonial $testimonial)
    {
        return view('admin.protfilio_theme.testimonial.partials.edit', compact('testimonial'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, testimonial $testimonial)
    {

        $testimonial->name =  $request->name;
        $testimonial->upload_id =  $request->image;
        $testimonial->designation = $request->designation;
        $testimonial->description = $request->description;
        $testimonial->save();



        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(testimonial $testimonial){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(testimonial $testimonial)
    {
        asset_unlink($testimonial->upload_id);
       $testimonial->delete();

        return json_encode([
            'title'=>'Successfully  Deleted testimonial',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function gettestimonial(Request $request)
    {
        $data_result = testimonial::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
