<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use DataTables;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     */ 
    public function index()
    {
        // $roles = role::latest()->get();
        if (request()->ajax()) {
         return DataTables::make(Blog::query())
             ->addColumn('image', function ($row) {

                 return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

             })
           
             ->addColumn('category', function ($row) {
                $data_cat = '';
                foreach($row->categories as $key => $cat){
                    $data_cat .=$cat->name;
                }
                
             })
             ->addColumn('action', function ($row) {

                 $return_data = '';
                 if(auth()->user()->can('blog edit')==true){
                     $edit_route = route('admin.blog.blog.edit', $row->id);
                     $edit_button =  "<a class='btn btn-warning '
                
                     href='$edit_route'>Edit</a>";
                     $return_data = $edit_button. '&nbsp;';
                 }

                 if(auth()->user()->can('blog delete') == true){
                     $delete_route = route('admin.blog.blog.delete', $row->id);
                     $delete_button =  "<button class='btn btn-danger '
                     data-title='$row->title'
                     onclick='button_ajax(this)'
                     data-href='$delete_route'>Delete</button>";
                     $return_data .= $delete_button ;
                 }

                 if(auth()->user()->can('blog read') == true){
                     $view_route = route('admin.blog.blog.show', $row->id);
                     $view_button = " <button class='btn btn-primary '
                     data-dialog=' modal-dialog-centered'
                     onclick='button_ajax(this)'
                     data-title='$row->title  info'
                     data-href='$view_route'>View</button>";

                     $return_data .= $view_button ;
                 }

                 return $return_data;


             })
             ->rawColumns(['action', 'image', 'category'])
             ->make(true);
     }
     return view('admin.blog.blog.index');
 }

 /**
  * Show the form for creating a new resource.
  */
 public function create()
 {
    $blog = null;
     return view('admin.blog.blog.partials.create_edit', compact('blog'));
 }

 /**
  * Store a newly created resource in storage.
  */
 public function store(Request $request)
 {
    
     $request['create'] = 'Blog Create Successfully';

    return $this->update($request);


 }

 /**
  * Display the specified resource.
  */
 public function show(Blog $blog)
 {
     return view('admin.blog.blog.partials.view', compact('blog'));
 }

 /**
  * Show the form for editing the specified resource.
  */
 public function edit(Blog $blog)
 {
     return view('admin.blog.blog.partials.create_edit', compact('blog'));
 }

 /**
  * Update the specified resource in storage.
  */
 public function update(Request $request,  $blog = null)
 {

    $request->validate([
        'title' => 'required',
        'description' => 'required',
        'published_at' => 'required',
        'short_description' => 'required',
    ]);

    if(!$blog){
        $blog = new Blog;
    }else{
        $blog = Blog::find($blog);
    }

    // return $request;
     $blog->title = $request->title;
     $blog->slug = $request->slug;
     $blog->short_description = $request->short_description;
     $blog->description = $request->description;
     $blog->upload_id = $request->image;;
     $blog->status = $request->status ?? 0;
     $blog->published_at = $request->published_at;
   
     if(isset($request['create'])){
        $blog->creator = auth()->user()->id ?? 0;
     };

     $blog->updater = auth()->user()->id ?? 0;
     $blog->save();


     $blog->categories()->sync($request->category ?? []);

     return json_encode([
         'title'=> isset($request['create']) ? $request['create'] : 'Successfully  Updated Blog',
         'type'=>'success',
         'refresh'=>'true',
     ]);
 }

 public function delete(Blog $blog){
     return view('layout.admin.modal_content_delete');
 }

 /**
  * Remove the specified resource from storage.
  */
 public function destroy(Blog $blog)
 {

     $blog->delete();

     return json_encode([
         'title'=>'Successfully  Deleted Blog',
         'type'=>'success',
         'refresh'=>'true',
     ]);
 }


}
