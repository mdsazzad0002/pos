<?php

namespace Database\Seeders;

use App\Models\supplierType;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SupplierTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $supplier_types = ['Distributor', 'Whole Seller', 'Broker'];

        foreach($supplier_types as $key => $supplier_type_data){
            $supplier_type = new supplierType();
            $supplier_type->name = $supplier_type_data;
            $supplier_type->creator = 1;
            $supplier_type->save();
        }
    }
}
