<?php

namespace Database\Seeders;

use App\Models\OfferBanner;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OfferbannerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [
            [
                "title"=> "Special Offer",
                "subtitle"=> "Aero Control Pro Joysticks",
                "link"=> "#",
                "status"=> "1",
                "image1"=> 0,
                "image2"=> 0,
                "image3"=> 0,
                "offer_end_data"=> Carbon::now()->addDays(23),
                "type"=> 1,
            ],
            [
                "title"=> "Hurry up! Offer ends in",
                "subtitle"=> "",
                "link"=> "#",
                "status"=> "1",
                "image1"=> 0,
                "image2"=> 0,
                "image3"=> 0,
                "offer_end_data"=> Carbon::now()->addDays(23),
                "type"=> 2,
            ],
            [
                "title"=> "Hurry up! Offer ends in",
                "subtitle"=> "",
                "link"=> "#",
                "status"=> "1",
                "image1"=> 0,
                "image2"=> 0,
                "image3"=> 0,
                "offer_end_data"=> Carbon::now()->addDays(23),
                "type"=> 3,
            ],
        ];
        //'1 => feature card 2 => full banner 3 => countdown'
        OfferBanner::insert($data);

    }
}
