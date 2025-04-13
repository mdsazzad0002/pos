<?php

namespace App\Http\Controllers\admin\language;

use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use App\Models\language\language;
use App\Http\Controllers\Controller;
use App\Models\language\Translation;

class TranslatorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
           if (request()->ajax()) {
            $query = Translation::leftJoin('languages', 'translations.language', 'languages.id')
                ->select('translations.*', 'languages.name as language_name');
            return DataTables::of($query)

                ->addColumn('view', function ($row) {
                    $view_route = route('admin.Translation.show', $row->id);
                    return "<button class='btn btn-primary '
                    data-dialog=' modal-dialog-centered'
                    onclick='button_ajax(this)'
                    data-title='$row->name  info'
                    data-href='$view_route'>View</button>";

                })
                ->addColumn('action', function ($row) {
                    $delete_route = route('admin.Translation.delete', $row->id);

                    $delete_button =  "<button class='btn btn-danger '

                    data-title='$row->name'
                    onclick='button_ajax(this)'
                    data-href='$delete_route'>Delete</button>";


                    $edit_button =  "<button class='btn btn-warning '
                    onclick='update_translation_ln(this, $row->id)'>Update</button>";

                    $return_data = '';
                    if(auth()->user()->can('Translation edit')==true){
                        $return_data = $edit_button. '&nbsp;';
                    }

                    if(auth()->user()->can('Translation delete') == true){
                        $return_data .= $delete_button ;
                    }

                    return $return_data;


                })
                ->rawColumns(['action', 'view'])
                ->make(true);
        }
        $languages = language::get();
        return view('admin.language.translation.index', compact('languages'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $language_all = language::all();
        return view('admin.language.translation.partials.create', compact('language_all'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'key' => 'required',
            'type' => 'required',
            'languages' => 'required'
        ]);

        foreach ($request->languages as $key => $value) {
            if (count(explode( '.',$request->key)) == 1) {
                return json_encode([
                    'title'=>'Language not valid',
                    'type'=>'error',
                    'refresh'=>'false',
                ]);
            }

            if(Translation::where(['key'=> $request->key, 'language' => $key])->count() != 0){
                continue;
            }
            $Translation = new Translation;
            $Translation->key = $request->key;
            $Translation->type = $request->type;
            $Translation->value = $value;
            $Translation->language = $key;
            $Translation->creator = auth()->user()->id ?? 0;
            $Translation->updater_id = auth()->user()->id ?? 0;
            $Translation->save();
        }

        return json_encode([
            'title'=>'Successfully  Created Translation',
            'type'=>'success',
            'refresh'=>'true',
        ]);


    }

    /**
     * Display the specified resource.
     */
    public function show(Translation $Translation)
    {
        return view('admin.language.translation.partials.view', compact('Translation'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Translation $Translation)
    {
        return false;
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Translation $Translation)
    {
        $request->validate([
            'key' => 'required',
            'type' => 'required'
        ]);



            $Translation->key = $request->key;
            $Translation->type = $request->type;
            $Translation->value =  $request->value;
            $Translation->updater_id = auth()->user()->id ?? 0;
            $Translation->save();




        return json_encode([
            'title'=>'Successfully  Updated Translation',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }

    public function delete(Translation $Translation){
        return view('layout.admin.modal_content_delete');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Translation $Translation)
    {


            $Translation->delete();


        return json_encode([
            'title'=>'Successfully  Deleted Translation',
            'type'=>'success',
            'refresh'=>'true',
        ]);
    }


    public function getTranslation(Request $request)
    {
        $data_result = Translation::where(function($query) use ($request) {
            if ($request->has('q')) {
                $query->where('name', 'LIKE', '%' . $request->q . '%');
            }
        })->select('id', 'name as text')->get();

        $result_make = [];
        $result_make['items']=$data_result;

        return json_encode($result_make);

    }


}
