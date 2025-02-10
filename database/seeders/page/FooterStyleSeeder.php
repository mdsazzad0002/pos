<?php

namespace Database\Seeders\page;

use App\Models\FooterStyle;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FooterStyleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {


        $data_array =[
            'footer_style' => [
                'key' => 'footer_style.footer_style1',
                'title' => 'Footer Style Style',
                'upload_id'=>'uploads/preset/footer_style/footer_style1.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                   Compare Style 1
                ',
            ],
        ];



        foreach($data_array as $key => $value){
            $homepage = FooterStyle::where('key', $value['key'])->first();
            if(!$homepage){
                $homepage = new FooterStyle();
            }
            foreach($value as $key => $value){
                $homepage->$key = $value;
            }
            $homepage->save();
        }
    }
}
