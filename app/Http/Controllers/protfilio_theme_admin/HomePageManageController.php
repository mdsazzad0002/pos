<?php

namespace App\Http\Controllers\protfilio_theme_admin;

use App\Models\Page;
use Illuminate\Support\Arr;
use Illuminate\Http\Request;
use App\Models\HomePageManage;
use App\Models\VarinatSuggession;
use App\Http\Controllers\Controller;

class HomePageManageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $id = $request->id;
        return view('admin.protfilio_theme.page.partials.edit_buttonbuilder', compact('id'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request)
    {
        $page_id = $request->page_id;
        return view('admin.protfilio_theme.page.partials._select_layout_modal', compact('page_id'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $homePageManage = VarinatSuggession::find($request->items_id);
        $homePageManageArray = $homePageManage->toArray();
        $homePageManage =Arr::except($homePageManageArray, ['created_at', 'deleted_at', 'updated_at', 'id', 'status', 'creator', 'updater', 'upload_id', 'image']);
        $homePageManage['controlby'] = $request->page_id;



        // Ensure the variable is properly named
        HomePageManage::create($homePageManage);

        return json_encode([
            'title'=>'Successfully  Added Items',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Page $homePageManage)
    {
        return view('admin.protfilio_theme.page.partials._edit_buttonbuilder', compact('homePageManage'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(HomePageManage $homePageManage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, HomePageManage $homePageManage)
    {


    // Retrieve the service by ID


    // Check if the service exists
    if (!$homePageManage) {
        return response()->json(['success' => false, 'message' => 'Service not found'], 404);
    }

    // Update the service with request data

    $homePageManage->title = $request->title;
    $homePageManage->sub_title = $request->sub_title;
    $homePageManage->short_read_more = $request->short_read_more;
    $homePageManage->view_all = $request->view_all;

    $homePageManage->items_per_row = $request->items_per_row;
    $homePageManage->items_show = $request->items_show;
    $homePageManage->view_all_page_url = $request->view_all_page_url;
    $homePageManage->short_read_more_page_url = $request->short_read_more_page_url;
    $homePageManage->is_details_page = $request->is_details_page;

    $homePageManage->title_status = $request->title_status; // Only keep one status for title
    $homePageManage->sub_title_status = $request->sub_title_status; // Only keep one status for subtitle
    $homePageManage->short_read_more_status = $request->short_read_more_status; // Short read more status
    $homePageManage->view_all_status = $request->view_all_status; // View all status
    $homePageManage->status = $request->status; // General status

    $homePageManage->background_type = $request->background_type; // Background type
    $homePageManage->background = $request->background; // Background value
    $homePageManage->background_color = $request->background_color; // Background color

    // Save the updated homePageManage
    $homePageManage->save();

    return response()->json([
        'title'=>'Successfully  Added Items',
        'type'=>'success',
        'refresh'=>'true',
    ]);

    }


    public function delete(HomePageManage $Page){
        return view('layout.admin.modal_content_delete');
    }


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(HomePageManage $homePageManage)
    {
        $homePageManage->delete();
        return json_encode([
            'title'=>'Successfully  Deleted Items',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }
}
