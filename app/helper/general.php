<?php

use App\Models\Category;
use App\Models\upload;
use App\Models\setting;
use Illuminate\Support\Arr;
use Illuminate\Support\Str;
use App\Models\language\language;
use App\Models\order;
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
            if (filter_var($file1->name, FILTER_VALIDATE_URL)) {
                return $file1->name;
            }
            
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


/**
 * Summary of numToWordsRec
 * @param mixed $number
 * @return string
 */
function numToWordsRec($number) {
    $words = array(
        0 => 'zero', 1 => 'one', 2 => 'two',
        3 => 'three', 4 => 'four', 5 => 'five',
        6 => 'six', 7 => 'seven', 8 => 'eight',
        9 => 'nine', 10 => 'ten', 11 => 'eleven',
        12 => 'twelve', 13 => 'thirteen',
        14 => 'fourteen', 15 => 'fifteen',
        16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
        19 => 'nineteen', 20 => 'twenty', 30 => 'thirty',
        40 => 'forty', 50 => 'fifty', 60 => 'sixty',
        70 => 'seventy', 80 => 'eighty',
        90 => 'ninety'
    );

    if ($number < 20) {
        return $words[$number];
    }

    if ($number < 100) {
        return $words[10 * floor($number / 10)] .
               ' ' . $words[$number % 10];
    }

    if ($number < 1000) {
        return $words[floor($number / 100)] . ' hundred '
               . numToWordsRec($number % 100);
    }

    if ($number < 1000000) {
        return numToWordsRec(floor($number / 1000)) .
               ' thousand ' . numToWordsRec($number % 1000);
    }

    return numToWordsRec(floor($number / 1000000)) .
           ' million ' . numToWordsRec($number % 1000000);
}



/**
 * Update the value of a key in the .env file.
 *
 * @param string $key The key to be updated.
 * @param string $value The new value for the key.
 * @return void
 */
function updateEnvFile($key, $value)
{
    $path = base_path('.env'); // Path to the .env file

    if (file_exists($path)) {
        // Read the .env file into an array
        $envFile = file_get_contents($path);

        // Search for the key and update it
        $envFile = preg_replace("/^{$key}=[^\n]*$/m", "{$key}={$value}", $envFile);

        // If the key wasn't found, add it to the end of the file
        if (strpos($envFile, "{$key}=") === false) {
            $envFile .= "\n{$key}={$value}";
        }

        // Write the changes back to the .env file
        file_put_contents($path, $envFile);
    }
}



function unchecked_order(){
    return Order::whereDoesntHave('order_events', function ($query) {
        $query->whereNot('status_id', 1);
    })->count();
}


