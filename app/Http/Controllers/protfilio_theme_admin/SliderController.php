<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\slider;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Yajra\DataTables\Facades\DataTables;

class SliderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(slider::query())


                ->addColumn('image', function ($row) {
                   return  $view_route = "<img style='max-width:100px' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.slider.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {

                        $delete_route = route('admin.slider.delete', $row->id);

                        $delete_button =  "<button class='btn btn-danger '

                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $edit_route = route('admin.slider.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";

                        $return_data = '';
                        if(auth()->user()->can('slider edit')==true){
                            $return_data = $edit_button. '&nbsp;';
                        }

                        if(auth()->user()->can('slider delete') == true){
                            $return_data .= $delete_button ;
                        }




                    return $return_data;


                })
                ->rawColumns(['image','action', 'view'])
                ->make(true);
        }
        return view('admin.protfilio_theme.slider.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $slider = null;
        return view('admin.protfilio_theme.slider.partials.edit', compact('slider'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $request['create_data'] = true;
        $slider = null;
        return $this->update($request,  $slider);




    }

    /**
     * Display the specified resource.
     */
    public function show(slider $slider)
    {
        return view('admin.protfilio_theme.slider.partials.view', compact('slider'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(slider $slider)
    {
        return view('admin.protfilio_theme.slider.partials.edit', compact('slider'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request,  $slider)
    {
        if(!$slider){
            $slider = new slider;
        }else{
            $slider = slider::find($slider);
        }

        $slider->title =  $request->title;
        $slider->upload_id =  $request->image;
        $slider->upload_bg =  $request->upload_bg;
        $slider->short_description = $request->description;
        $slider->sub_description = $request->sub_description;
        $slider->button_link = $request->button_link;
        $slider->button_title = $request->button_title;
        $slider->save();

        if($request->has('create_new')){
            return json_encode([
                'title'=>'Successfully  Created slider',
                'type'=>'success',
                'refresh'=>'true',
            ]);
        }


        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(slider $slider){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(slider $slider)
    {
        asset_unlink($slider->upload_id);
       $slider->delete();

        return json_encode([
            'title'=>'Successfully  Deleted slider',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getslider(Request $request)
    {
        $data_result = slider::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
