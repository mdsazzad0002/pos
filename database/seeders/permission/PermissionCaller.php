<?php

namespace Database\Seeders\permission;

use Illuminate\Database\Seeder;
use Database\Seeders\permission\userSeeder;
use Database\Seeders\permission\rolepermissionsedder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class PermissionCaller extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $this->call([
            userSeeder::class,
            rolepermissionsedder::class
       ]);

    }
}
