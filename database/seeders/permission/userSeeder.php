<?php

namespace Database\Seeders\permission;

use App\Models\User;
use Illuminate\Support\Str;
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
        $items = User::count();
        if($items == 0){
            User::factory()->create([
              'name' => 'Super Admin',
              'slug'=> Str::slug('Super Admin'),
              'email' => 'admin@gmail.com',
              'username'=> 'superadmin',
              'status' => 1,
              'upload_id' => '0',
              'password'=>  Hash::make('admin@gmail.com'),
              'branch_id'=> 1
          ]);
        }
    }
}
