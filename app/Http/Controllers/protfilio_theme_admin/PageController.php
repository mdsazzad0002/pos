<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\Page;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Http\Controllers\Controller;
use App\Models\HomePageManage;
use Illuminate\Support\Facades\Auth;
class PageController extends Controller
{
  /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {

            $query = Page::query();
            // $user = auth()->user();
            // // dd($user->permissions);
            // $permissions = $user->getAllPermissions()->pluck('name')->toArray();
            // // dd($permissions);

            return DataTables::of($query)
        
            //    ->filterColumn('permission', function ($query) use ($permissions) {
            //         $query->where(function ($q) use ($permissions) {
            //             $q->whereNull('permission')
            //             ->orWhereIn('permission', $permissions);
            //         });
            //     })
                ->addColumn('view', function ($row) {
                    $view_route = route('admin.page.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('visit_page', function ($row){

                      $visit_page =  url($row->slug);
                      $visit_page_string =  '"'.url($row->slug).'"';
                      
                   return $visit_button =  "<div class='btn-group' >
                        <button class='btn btn-secondary' title='Click To Copy' onclick='copyToClipboard(".$visit_page_string.")'>".$row->slug."</button>
                        <a title='Visit link new tab' class='btn btn-primary '
                        data-title='$row->name' href='$visit_page' target='_blank' ><i class='fas fa-external-link-alt'></i></a>
                    </div>
                    ";

                })

                ->addColumn('action', function ($row) {

                        $delete_route = route('admin.page.delete', $row->id);
                        $delete_button =  "<button class='btn btn-danger '
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$delete_route'>Delete</button>";

                        $edit_route = route('admin.page.edit', $row->id);
                        $edit_button =  "<button class='btn btn-warning '
                        data-dialog='modal-dialog-centered'
                        data-title='$row->name'
                        onclick='button_ajax(this)'
                        data-href='$edit_route'>Edit</button>";


                        $builder_route = route('admin.homePageManage.index', 'id='. $row->id);
                        $edit_buttonbuilder =  "<a target='_blank' href='$builder_route' class='btn btn-warning'>Edit Element</a>";

                        $return_data = '';

                        if(auth()->user()->can('page edit')==true){
                            $return_data .= $edit_button. '&nbsp;';
                            $return_data .= $edit_buttonbuilder. '&nbsp;';
                        }

                        if(auth()->user()->can('page delete') == true){
                            $return_data .= $delete_button ;
                        }

                    return $return_data;


                })
                ->rawColumns(['action', 'view', 'visit_page'])
                ->make(true);
        }
        return view('admin.protfilio_theme.page.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $page = null;
        return view('admin.protfilio_theme.page.partials.edit_create', compact('page'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required',
        ]);

        if($request->homepage == 1){
            Page::query()->update(['homepage' => 0]);
        }

        $page =  new Page;
        $page->name = $request->name;
        $page->slug = $request->slug;
        $page->status = $request->status;
        $page->page_type = $request->page_type;
        $page->homepage = $request->homepage;
        $page->save();

        return json_encode([
            'title'=>'Successfully  Created Page',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(Page $page)
    {

        return view('admin.protfilio_theme.Page.partials.view', compact('page'));
    }

    /**
     * Display the specified resource.
     */

    // Page Order UPdate
    public function edit_builder_update(Request $request, Page $page)
    {
        // return $request;
        foreach($request->order as $key => $items){
            HomePageManage::where(['id'=> $items, 'controlby'=>$request->id])->update(['order'=> $key+1]);
        }
        return json_encode([
            'title'=>'Successfully Order updated',
            'type'=>'success',
            'refresh'=>'false',
        ]);


    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Page $page)
    {
        return view('admin.protfilio_theme.page.partials.edit_create', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Page $page)
    {
        if($request->homepage == 1){
            Page::query()->where('id', '!=', $page->id)->update(['homepage' => 0]);
        }

        $page->name = $request->name;
        $page->slug = $request->slug;
        $page->status = $request->status;
        $page->page_type = $request->page_type;
        $page->homepage = $request->homepage;

        $page->save();



        return json_encode([
            'title'=>'Successfully  Updated quantity',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(Page $Page){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Page $Page)
    {

       $Page->delete();

        return json_encode([
            'title'=>'Successfully  Deleted Page',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getPage(Request $request)
    {
        $data_result = Page::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }





}
