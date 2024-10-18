<?php

namespace App\Http\Controllers;

use App\Models\setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request, $slug, $key)
    {

        $perpage = 12;
        if($request->has('perpage')){
            if($request->perpage != ''){
                $perpage = $request->perpage;
            }
        }


        $settings = setting::where('key', $key)->where(function ($query) use ($request) {
            if($request->has('s')){
                $search_keyword = $request->s;
                $query->where('name', 'LIKE', "%$search_keyword%");
            }
        })->paginate($perpage);


        if ($request->ajax()) {
            return view('admin.settings.partials.helper.' . $slug.'-helper', compact('settings'));
        }
        $flag_target = 0;
        if($slug == 'main-setting' && $key == '9'){
            $flag_target = 1;
        }elseif($slug == 'site-verification-setting' && $key == '25'){
            $flag_target = 1;
        }elseif($slug == 'site-tag-management' && $key == '24'){
            $flag_target = 1;
        }elseif($slug == 'site-pwa-management' && $key == '20'){
            $flag_target = 1;
        }elseif($slug == 'takto-messageing-management' && $key == '31'){
            $flag_target = 1;
        }elseif($slug == 'cookie-management' && $key == '40'){
            $flag_target = 1;
        }

        if($flag_target == 1){
            return view('admin.settings.index', compact('slug', 'settings'));
        }else{
            abort('404');
        }
    }






    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    public function type_check($key, $value, $id =null){
        $keywords = ['image', 'file', 'logo'];

        foreach ($keywords as $keyword) {
            if (str_contains($key, $keyword)) {
                // return $upload_id = uploads($value, $id);

                if($id !== null){
                    return $upload_id = uploads($value, $id);
                }else{
                    return $upload_id = uploads($value);
                }

            }
        }
        return $value;
    }
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // return $_REQUEST;

        $creator_id = auth()->user()->id ?? 0;

        if($request->has('group')){
             $request = $request->except('group');

            foreach ($request as $key => $items) {
                $items_data = explode(':', $key);
                $setting = setting::where('name', $items_data[0])->where('key',  $items_data[1])->first();


                $submit_value = '';

                if( $setting){
                    $submit_value = $items;//$this->type_check($items_data[0],  $items,  $setting->value);

                    $setting->value =  $submit_value;

                }else{
                    $submit_value =  $items;//$this->type_check(  $items_data[0],  $items);

                    $setting = new setting;
                    $setting->name =  $items_data[0];
                    $setting->key =  $items_data[1];
                    $setting->value =   $submit_value;
                }

                $setting->creator_id = $creator_id;
                $setting->save();

            }

            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);


        }else{
             $setting = setting::where('name', $request->name)->where('key', $request->key)->first();

            $submit_value = '';

            if( $setting){
                $submit_value =    $request->value; //$this->type_check($setting->name,  $request->value,  $setting->value);
                $setting->value =  $submit_value;

            }else{
                $setting = new setting;
                $submit_value = $request->value; // $this->type_check(  $setting->name,  $request->value);
                $setting->name = $request->name;
                $setting->key = $request->key;
                $setting->value =   $submit_value;
            }

            $setting->creator_id = $creator_id;
            $setting->save();

            return json_encode([
                'title' => 'Successfully   updated',
                'type' => 'success',
                'refresh' => 'true',
            ]);
        }


        // return     $setting;

    }



    /**
     * Display the specified resource.
     */
    public function show(setting $setting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(setting $setting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, setting $setting)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(setting $setting)
    {
        //
    }
}
