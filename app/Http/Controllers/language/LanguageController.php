<?php

namespace App\Http\Controllers\language;



use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Models\language\language;
use App\Http\Controllers\Controller;
use App\Models\language\Translation;

class LanguageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           // $roles = role::latest()->get();
           if (request()->ajax()) {
            return DataTables::make(language::query())

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.language.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.language.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";

                    $edit_route = route('admin.language.edit', $row->id);
                    $edit_button =  "<button class='btn btn-warning '
                    data-dialog='modal-dialog-centered'
                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$edit_route'>Edit</button>";

                    $return_data = '';
                    if(auth()->user()->can('language edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('language delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        return view('admin.language.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.language.partials.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:languages,name' // Adjust 'languages' to your actual table name
        ]);
        $language_exists = language::where('name', $request->name)->get()->count();
        if($language_exists == 0){
            $language = new language;
            $language->name = $request->name;;
            $language->creator = auth()->user()->id ?? 0;
            $language->save();

            $translates = Translation::where('language', 1)->get();

            foreach($translates as $key=> $translate_data){
                $translate = new Translation;
                $translate->key = $translate_data->key;
                $translate->type = $translate_data->type;
                $translate->value =  $translate_data->value;
                $translate->language = $language->id ;
                $translate->creator = auth()->user()->id ?? 0;
                $translate->save();
            }
   return json_encode([
            'title'=>'Successfully  Created language',
            'type'=>'success',
            'refresh'=>'true',
        ]);
        }else{
            return json_encode([
                'title'=>'Language Already Exists',
                'type'=>'error',
                'refresh'=>'false',
            ]);
        }





    }

    /**
     * Display the specified resource.
     */
    public function show(language $language)
    {
        return view('admin.language.partials.view', compact('language'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(language $language)
    {
        return view('admin.language.partials.edit', compact('language'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, language $language)
    {
        if($language){
            $language->name = $request->name;
            $language->updater_id = auth()->user()->id ?? 0;
            $language->save();

            return json_encode([
                'title'=>'Successfully  Updated language',
                'type'=>'success',
                'refresh'=>'true',
            ]);

        }else{
            return json_encode([
                'title'=>'Failed to update language',
                'type'=>'error',
                'refresh'=>'false',
            ]);
        }
    }

    public function delete(language $language){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(language $language)
    {
        if($language->id == 1){
            return json_encode([
                'title'=>'Primary Language not deletable',
                'type'=>'error',
                'refresh'=>'false',
            ]);
        }

        $translate = Translation::where('language', $language->id);
        if($translate){
            $language->delete();
        }else{
            return json_encode([
                'title'=>'Something is Wrong',
                'type'=>'error',
                'refresh'=>'false',
            ]);
        }

        return json_encode([
            'title'=>'Successfully  Deleted language',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getlanguage(Request $request)
    {
        $data_result = language::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }


    public function switchLanguage($lang){

        $lang_array = language::get()->pluck('id')->toArray();

        if(in_array($lang, $lang_array)){
            session()->put('locale', $lang);
        }

        return redirect()->back();

    }

}
