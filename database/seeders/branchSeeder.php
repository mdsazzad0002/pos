<?php

namespace Database\Seeders;

use App\Models\branch;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class branchSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        if(branch::count() < 1){
            branch::create(
                [
                    'name' => 'Head Branch',
                    'location' => 'Unknown',
                    'creator' => '1',
                    'status' => 1
                ]
            );

        }
    }
}
