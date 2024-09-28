<?php

namespace Database\Seeders;

use App\Models\Vat;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class VatSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $vat_create = new Vat();
        $vat_create->name = 'Include Vat';
        $vat_create->type = '0'; // 0 means include  1 means exclude
        $vat_create->amount = '0';
        $vat_create->creator = 1;
        $vat_create->save();
    }
}
