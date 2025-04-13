<?php

namespace App\Http\Controllers\admin\category;

use App\Models\SubCategory;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;

class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {

            $query =  SubCategory::leftJoin('categories', 'sub_categories.category_id',  '=', 'categories.id')->select('sub_categories.*', 'categories.name as category_name');

            return DataTables::make(  $query)
                ->addColumn('image', function ($row) {

                    return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

                })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.subcategory.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' '
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.subcategory.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.subcategory.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog=' modal-lg'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('subcategory edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('subcategory delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'image'])
                ->make(true);
        }
        return view('admin.category.subcategory.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $subcategory = null; 
        return view('admin.category.subcategory.partials.edit', compact('subcategory'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request['create']='Successfully Created';
        return $this->update($request);
    }

    /**
     * Display the specified resource.
     */
    public function show(SubCategory $subcategory)
    {
        return view('admin.category.subcategory.partials.view', compact('subcategory'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SubCategory $subcategory)
    {
        return view('admin.category.subcategory.partials.edit', compact('subcategory'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $subcategory = null)
    {

        
        $request->validate(['name' => 'required', 'category'=>'required|integer']);

        if($subcategory){
            $subcategory = SubCategory::find($subcategory);
        }else{
            $subcategory = new SubCategory;
            $category->creator = auth()->user()->id ?? 0;
        }


        if($subcategory){
            $subcategory->name = $request->name ?? '';
            $subcategory->category_id = $request->category ?? 0;
            
            $subcategory->description = $request->description ?? '';
            $subcategory->primary_description = $request->primary_description ?? '';
            $subcategory->additional_description = $request->additional_description ?? '';
            $subcategory->need_additional = $request->need_additional ?? 0;
            
            $subcategory->status = $request->status;
            $subcategory->upload_id = $request->image ?? 0;
            $subcategory->slug = $request->slug ?? '';
            $subcategory->save();

        }

        return json_encode([
            'title'=> isset($request['create']) ? $request['create'] : 'Successfully  Updated subcategory',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(SubCategory $subcategory){
        return view('layouts.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SubCategory $subcategory)
    {

        $subcategory->delete();

        return json_encode([
            'title'=>'Successfully  Deleted SubCategory',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getsubcategory (Request $request)
    {
        $data_result = subcategory::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');

            }
            if ($request->has('cat_id')) {
                $query->where('category_id', 'LIKE', '%' . $request->cat_id . '%');

            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }
}
