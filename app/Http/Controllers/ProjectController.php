<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;
use DataTables;

class ProjectController extends Controller
{
    /**
     * Display a listing of the resource.
     */ 
    public function index()
    {
        if (request()->ajax()) {
         return DataTables::make(Project::query())
             ->addColumn('image', function ($row) {

                 return "<img style='max-width:100px;' src='".dynamic_asset($row->upload_id)."'/>";

             })
           
             ->addColumn('action', function ($row) {

                 $return_data = '';
                 if(auth()->user()->can('project edit')==true){
                     $edit_route = route('admin.project.edit', $row->id);
                     $edit_button =  "<a class='btn btn-warning '
                
                     href='$edit_route'>Edit</a>";
                     $return_data = $edit_button. '&nbsp;';
                 }

                 if(auth()->user()->can('project delete') == true){
                     $delete_route = route('admin.project.delete', $row->id);
                     $delete_button =  "<button class='btn btn-danger '
                     data-title='$row->title'
                     onclick='button_ajax(this)'
                     data-href='$delete_route'>Delete</button>";
                     $return_data .= $delete_button ;
                 }

                 if(auth()->user()->can('project read') == true){
                     $view_route = route('admin.project.show', $row->id);
                     $view_button = " <button class='btn btn-primary '
                     data-dialog=' modal-dialog-centered'
                     onclick='button_ajax(this)'
                     data-title='$row->title  info'
                     data-href='$view_route'>View</button>";

                     $return_data .= $view_button ;
                 }

                 return $return_data;


             })
             ->rawColumns(['action', 'image'])
             ->make(true);
     }
     return view('admin.project.index');
 }

 /**
  * Show the form for creating a new resource.
  */
 public function create()
 {
    $project = null;
     return view('admin.project.partials.create_edit', compact('project'));
 }

 /**
  * Store a newly created resource in storage.
  */
 public function store(Request $request)
 {
    
     $request['create'] = 'Project Create Successfully';

    return $this->update($request);


 }

 /**
  * Display the specified resource.
  */
 public function show(Project $project)
 {
     return view('admin.project.partials.view', compact('project'));
 }

 /**
  * Show the form for editing the specified resource.
  */
 public function edit(Project $project)
 {
     return view('admin.project.partials.create_edit', compact('project'));
 }

 /**
  * Update the specified resource in storage.
  */
 public function update(Request $request,  $project = null)
 {

    $request->validate([
        'title' => 'required',
        'description' => 'required',
        'published_at' => 'required',
        'short_description' => 'required',
    ]);

    if(!$project){
        $project = new Project;
    }else{
        $project = Project::find($project);
    }

    // return $request;
     $project->title = $request->title;
     $project->slug = $request->slug;
     $project->short_description = $request->short_description;
     $project->description = $request->description;
     $project->upload_id = $request->image;;
     $project->status = $request->status ?? 0;
     $project->published_at = $request->published_at;
   
     if(isset($request['create'])){
        $project->creator = auth()->user()->id ?? 0;
     };

     $project->updater = auth()->user()->id ?? 0;
     $project->save();


    

     return json_encode([
         'title'=> isset($request['create']) ? $request['create'] : 'Successfully  Updated Project',
         'type'=>'success',
         'refresh'=>'true',
     ]);
 }

 public function delete(Project $Project){
     return view('layout.admin.modal_content_delete');
 }

 /**
  * Remove the specified resource from storage.
  */
 public function destroy(Project $project)
 {

     $project->delete();

     return json_encode([
         'title'=>'Successfully  Deleted Project',
         'type'=>'success',
         'refresh'=>'true',
     ]);
 }


}
