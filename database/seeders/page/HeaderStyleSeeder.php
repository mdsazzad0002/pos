<?php

namespace Database\Seeders\page;

use App\Models\HeaderStyle;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class HeaderStyleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data_array =[
            'header_style' => [
                'key' => 'header_style.header_style1',
                'title' => 'Header Style',
                'upload_id'=>'preset/header_variant/header_style1.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                    Left Welcome Note
                    Right contact,
                    Track Order,
                    About,
                    Language

                    Middle Logo,
                    Search,
                    Register,
                    Login,
                    Cart,

                    Navbar
                    With Sticky

                ',
            ],
            'header_style2' => [
                'key' => 'header_style.header_style2',
                'title' => 'Header Style',
                'upload_id'=>'preset/header_variant/header_style2.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                    Left Email Phone
                    Right contact,
                    Track Order,
                    About,
                    Language

                    Middle Logo,
                    Search,
                    Register,
                    Login,
                    Cart,

                    Navbar
                    With Sticky

                ',
            ],
            'header_style3' => [
                'key' => 'header_style.header_style3',
                'title' => 'Header Style',
                'upload_id'=>'preset/header_variant/header_style3.png',
                'status' => 1,
                'background_color' => '#ffffff',
                'details' => '
                    Left Email Phone
                    Right contact,
                    Track Order,
                    About,
                    Language

                    Middle Logo,
                    Search,
                    Register,
                    Login,
                    Cart,

                    Navbar
                    With Sticky

                ',
            ],
            'header_style4' => [
                'key' => 'header_style.header_style4',
                'title' => 'Header Style 4',
                'upload_id'=>'preset/header_variant/header_style4.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                    Left Email Phone
                    Right contact,
                    Track Order,
                    About,
                    Language

                    Middle Logo,
                    Search,
                    Register,
                    Login,
                    Cart,

                    Navbar
                    With Sticky

                ',
            ],
            'header_style5' => [
                'key' => 'header_style.header_style5',
                'title' => 'Header Style 5',
                'upload_id'=>'preset/header_variant/header_style5.png',
                'status' => 0,
                'background_color' => '#ffffff',
                'details' => '
                    Left Email Phone
                    Right contact,
                    Track Order,
                    About,
                    Language

                    Middle Logo,
                    Search,
                    Register,
                    Login,
                    Cart,

                    Navbar
                    With Sticky

                ',
            ],
        ];


        foreach($data_array as $key => $value){
            $homepage = HeaderStyle::where('key', $value['key'])->first();
            if(!$homepage){
                $homepage = new HeaderStyle();
            }
            foreach($value as $key => $value){
                $homepage->$key = $value;
            }
            $homepage->save();
        }




    }
}
