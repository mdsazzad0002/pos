<?php

namespace App\Http\Controllers;

use App\Models\upload;
use Illuminate\Http\Request;
use Intervention\Image\Drivers\Gd\Driver;
use Intervention\Image\ImageManager;
use Intervention\Image\Encoders\PngEncoder;
use Illuminate\Support\Facades\File;


class UploadController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {

        $upload_data = upload::where(function($query) use ($request){
            if($request->has('id')){
                $query->where('id', '<', "$request->id");
            }
        })->orderBy('id','desc')->limit(50)->pluck('name', 'id')->toArray();
        return json_encode($upload_data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //return 4545;



          // Temporary directory for chunks
          $tempPath = public_path('uploads/temp');
          $finalPath = public_path('uploads');

          // Create directories if not exist
          File::ensureDirectoryExists($tempPath);
          File::ensureDirectoryExists($finalPath);

          $fileName = $request->input('fileName');
          $chunkIndex = $request->input('chunkIndex');
          $totalChunks = $request->input('totalChunks');

          // Save the chunk to a temporary file
          $chunkFile = "{$tempPath}/{$fileName}.part{$chunkIndex}";
          $request->file('file')->move($tempPath, $chunkFile);

          // Check if all chunks are uploaded
          if ($this->allChunksUploaded($tempPath, $fileName, $totalChunks)) {
              // Combine chunks into the final file
              $finalFilePath = "{$finalPath}/{$fileName}";
              $finalFile = fopen($finalFilePath, 'wb');

              for ($i = 0; $i < $totalChunks; $i++) {
                  $chunkFile = "{$tempPath}/{$fileName}.part{$i}";
                  $chunk = fopen($chunkFile, 'rb');
                  stream_copy_to_stream($chunk, $finalFile);
                  fclose($chunk);
                  unlink($chunkFile); // Remove chunk file
              }
              fclose($finalFile);

             // check image unsupport format by img tag
              $unsupport_format = ['avif', 'svg', 'webp', 'BMP', 'bmp',  'jfif', 'pjpeg', 'tif', 'tiff', 'pjp'];
               $file_explode = explode('.', $fileName);

                if(in_array(strtolower($file_explode[count($file_explode) - 1]), $unsupport_format)){

                    $imageManager = new ImageManager(new Driver());
                    $new_file = str_replace($file_explode[count($file_explode) - 1], 'png', $fileName);


                    $outputPath = public_path('uploads/'.$new_file);


                    $encoder = new PngEncoder();

                    $image = $imageManager->read($finalFilePath)->encode($encoder);
                    // $image->save($outputPath);
                    file_put_contents($outputPath, (string) $image);

                    unlink($finalFilePath);
                    $fileName = $new_file;

                }


              $upload = Upload::create([
                'name' => $fileName,
                'extension' => explode('.',$fileName)[1],
                'size' => $request->size,
                'source' => 'Local',
                'user_id' => auth()?->user()?->id,
                // 'extension'=>$external_link,
            ]);

            return response()->json([
                'complete' => true,
                'message' => 'Chunk uploaded successfully!',
                'name' => $fileName,
                'file_path' => public_path('uploads/'.$fileName),
                'id' => $upload->id
            ]);
          }


         return  response()->json([
            'complete' => false,
            'message' => 'Chunk uploaded successfully!',
          ]);
    }

    private function allChunksUploaded($tempPath, $fileName, $totalChunks)
    {
        for ($i = 0; $i < $totalChunks; $i++) {
            if (!file_exists("{$tempPath}/{$fileName}.part{$i}")) {
                return false;
            }
        }
        return true;
    }

    /**
     * Display the specified resource.
     */
    public function show(upload $upload)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(upload $upload)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, upload $upload)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(upload $upload)
    {
        //
    }
}
