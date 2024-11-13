<?php

use App\Models\category;
use App\Models\upload;
use App\Models\setting;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use App\Models\language\language;
use Illuminate\Support\Facades\File;






function settings($name = null, $key = null)
{
    if($name == null || $key == null){
        return '';
    }
    $data = $setting =  setting::firstOrCreate(
        ['name' => "$name", 'key' => "$key"],
        ['creator_id' => 0, 'value'=> Str::title(str_replace("_", ' ', $name))],
    );


    if ($data) {
        $keywords = ['image', 'file', 'logo'];

        foreach ($keywords as $keyword) {
            if (str_contains($name, $keyword)) {
                return dynamic_asset($data->value);
            }
        }

        return $data->value;
    }

    return '';
}

function language(){
    return language::get();
}

function file_type($file_mime_type, $file_extension)
{
    if ($file_mime_type == 'image') {
        $image = ['png', 'jpg', 'gif', 'webp', 'jpeg'];
        $file_extension = strtolower($file_extension);
        if (in_array($file_extension, $image)) {
            return true;
        }
    } else {
        return false;
    }
}



function uploads($file, $id = null)
{
    $file_extension = $file->getClientOriginalExtension();
    $file_name = (rand(1000, 100000) . time() * 40202) . '.' . $file_extension;

    $file_temp_name  =  $file->getRealPath();
    $file_size = $file->getSize();

    $file_mime_type = $file->getMimeType();
    $file_mime_type = explode('/', $file_mime_type)[0];

    if (file_type($file_mime_type, $file_extension)) {

        $destinationPath = public_path() . '/uploads/';
        $file->move($destinationPath, $file_name);
        if ($id != null ) {
            $file_find = Upload::find($id);
            if ($file_find) {
                $oldFilePath = $destinationPath . '/' . $file_find->name;

                // Check if the old file exists and delete it
                if (file_exists($oldFilePath) && is_file($oldFilePath)) {
                    unlink($oldFilePath);
                }
                $file_find->name = $file_name;
                $file_find->extension = $file_extension;
                $file_find->size = $file_size;
                $file_find->save();
            } else {
                Upload::create([
                    'name' => $file_name,
                    'extension' => $file_extension,
                    'size' => $file_size,
                    'source' => 'Local',
                    'user_id' => auth()?->user()?->id,
                    // 'extension'=>$external_link,
                ]);
            }
        } else {
            Upload::create([
                'name' => $file_name,
                'extension' => $file_extension,
                'size' => $file_size,
                'source' => 'Local',
                'user_id' => auth()?->user()?->id,
                // 'extension'=>$external_link,
            ]);
        }
        //Move Uploaded File
        return Upload::where('name', $file_name)->get()->first()->id;
    }
    return 'failed';
}



function dynamic_asset($id)
{
    $destinationPath = 'uploads/';
    if ($id != null || $id != '') {
        if ($file1 = Upload::find($id)) {
            $file1 = $destinationPath . $file1->name;
            if (File::exists(public_path($file1)) || is_dir(public_path($file1))) {
                return asset($file1);
            } else {
                $file = $destinationPath . 'fixing.png';
                return asset($file);
            }
        } else {
            $file = $destinationPath . 'fixing.png';
            return asset($file);
        }
    } else {
        $file = $destinationPath . 'fixing.png';
        return asset($file);
    }
}

function dynamic_assets($ids){
    $data = [];
    foreach (explode(',',$ids) as $id) {
        $data[$id] = dynamic_asset($id);
    }
    return $data;
}


function asset_unlink($id)
{

    // $destinationPath = public_path() . '/uploads/';
    $destinationPath = 'uploads/';
    if ($id != null && $id != '' && $id != 0) {
        $file1 = $destinationPath . Upload::find($id)->name;
        // return static_asset($file1);
        if (File::exists(public_path($file1)) || is_dir(public_path($file1))) {
            if(unlink( public_path($file1))){
                return true;
            }else{
                return false;
            }
        }else{
            return true;
        }
    }
    return true;
}


/**
 * Summary of create_slug
 * @param string $slug_gable_text Slug name
 * @param string $model_name
 * @param string $column_name
 * @return string
 */
function create_slug($slug_gable_text, $model_name, $column_name)
{
    // Use CamelCase for Model Name

    $model_path = '\App\Models\\' . ucwords($model_name);

    $slug = Str::slug($slug_gable_text);
    $check = true;

    do {
        $old_category = (new $model_path)->where($column_name, $slug)->orderBy('id', 'DESC')->first();

        if ($old_category != null) {
            $old_category_name = $old_category->$column_name;
            $exploded = explode('-', $old_category_name);

            if (array_key_exists(1, $exploded)) {
                $number = end($exploded);

                if (is_numeric($number) == true) {
                    $number = (int)$number;
                    array_pop($exploded);

                    $final_array = array_merge($exploded, Arr::wrap(++$number));

                    $slug = implode('-', $final_array);
                } else {
                    $slug .= '-1';
                }
            } else {
                $slug .= '-1';
            }
        } else {
            $check = false;
        }
    } while ($check);

    return $slug;
}



/**
 * Summary of category
 * @return category[]|Illuminate\Database\Eloquent\Collection
 */
function category(){
    return category::where('status', 1)->orderBy('name','asc')->get();
}

