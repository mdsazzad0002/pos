<?php

namespace App\Http\Controllers;

use App\Models\category;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(category::query())
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })

                ->addColumn('action', function ($row) {




                    $return_data = '';
                    if(auth()->user()->can('category edit')==true){
                        $edit_route = route('admin.category.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('category delete') == true){
                        $delete_route = route('admin.category.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";
                        $return_data .= $delete_button ;
                    }

                    if(auth()->user()->can('category read') == true){
                        $view_route = route('admin.category.show', $row->id);
                        $view_button = " <button class='btn btn-primary '
                        data-dialog=' modal-dialog-centered'
                        onclick='button_ajax(this)'
                        data-title='$row->name  info'
                        data-href='$view_route'>View</button>";

                        $return_data .= $view_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'image'])
                ->make(true);
        }
        return view('admin.category.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.category.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate(['name' => 'required']);
        $category = new Category;
        $category->name = $request->name;;
        $category->status = $request->status;
        $category->description = $request->description;;
        $category->creator = auth()->user()->id ?? 0;

        $category->upload_id = $request->image ?? 0;
        $category->slug = create_slug($request->name, 'category', 'slug');
        $category->save();


        return json_encode([
            'title'=>'Successfully  Created Category',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(category $category)
    {
        return view('admin.category.partials.view', compact('category'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(category $category)
    {
        return view('admin.category.partials.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, category $category)
    {
        $category->name = $request->name;
        $category->status = $request->status;
        $category->description = $request->description;;
        $category->upload_id = $request->image ?? 0;
        $category->save();


        return json_encode([
            'title'=>'Successfully  Updated Category',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(category $category){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(category $category)
    {

        $category->delete();

        return json_encode([
            'title'=>'Successfully  Deleted Category',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getCategory(Request $request)
    {
        $data_result = category::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
