<?php

namespace Database\Seeders\permission;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class userSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
          User::factory()->create([
            'name' => 'Super Admin',
            'email' => 'admin@gmail.com',
            'username'=> 'superadmin',
            'upload_id' => '0',
            'password'=>  Hash::make('admin@gmail.com'),
            'branch_id'=> 1
        ]);
    }
}
