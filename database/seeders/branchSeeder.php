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
        branch::create(
            [
                'name' => 'Head Branch',
                'location' => 'Mirpur 10',
                'creator' => '1',
                'status' => 1
            ]
        );
    }
}
