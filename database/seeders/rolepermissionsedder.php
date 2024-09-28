<?php

namespace Database\Seeders;


use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class rolepermissionsedder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $role = Role::create(['name' => 'superadmin']);

        $permission_data = [
            ['name' => 'user read'],
            ['name' => 'user create'],
            ['name' => 'user edit'],
            ['name' => 'user rolechange'],
            ['name' => 'user delete'],

            ['name' => 'role read'],
            ['name' => 'role create'],
            ['name' => 'role edit'],
            ['name' => 'role delete'],

            ['name' => 'branch read'],
            ['name' => 'branch create'],
            ['name' => 'branch edit'],
            ['name' => 'branch delete'],

            ['name' => 'product read'],
            ['name' => 'product create'],
            ['name' => 'product edit'],
            ['name' => 'product delete'],

            ['name' => 'unit read'],
            ['name' => 'unit create'],
            ['name' => 'unit edit'],
            ['name' => 'unit delete'],

            ['name' => 'purchase read'],
            ['name' => 'purchase create'],
            ['name' => 'purchase edit'],
            ['name' => 'purchase delete'],

            ['name' => 'customer read'],
            ['name' => 'customer create'],
            ['name' => 'customer edit'],
            ['name' => 'customer delete'],

            ['name' => 'stock read'],


            ['name' => 'supplier read'],
            ['name' => 'supplier create'],
            ['name' => 'supplier edit'],
            ['name' => 'supplier delete'],

            ['name' => 'category read'],
            ['name' => 'category create'],
            ['name' => 'category edit'],
            ['name' => 'category delete'],

            ['name' => 'brand read'],
            ['name' => 'brand create'],
            ['name' => 'brand edit'],
            ['name' => 'brand delete'],

            ['name' => 'setting read'],
            ['name' => 'setting create'],
            ['name' => 'setting edit'],
            ['name' => 'setting delete'],

            ['name' => 'order read'],
            ['name' => 'order create'],
            ['name' => 'order edit'],
            ['name' => 'order delete'],

            ['name' => 'profile read'],
            ['name' => 'profile create'],
            ['name' => 'profile edit'],
            ['name' => 'profile delete'],

            ['name' => 'theme read'],



        ];


        foreach ($permission_data as $data) {
            $permission = Permission::create($data);
        }

        $role->syncPermissions(permission::all());




        $user = User::first();
        $user->assignRole($role);


    }
}
