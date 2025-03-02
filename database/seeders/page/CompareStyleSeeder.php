<?php

namespace Database\Seeders\page;

use App\Models\CompareStyle;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CompareStyleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data_array =[
            'compare_style' => [
                'key' => '_compare_style.compare_style1',
                'title' => 'Header Style',
                'upload_id'=>'preset/compare_variant/compare_style1.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                   Compare Style 1
                ',
            ],
        ];


        foreach($data_array as $key => $value){
            $homepage = CompareStyle::where('key', $value['key'])->first();
            if(!$homepage){
                $homepage = new CompareStyle();
            }
            foreach($value as $key => $value){
                $homepage->$key = $value;
            }
            $homepage->save();
        }


    }
}
