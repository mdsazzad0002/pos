<?php

namespace Database\Seeders\permission;


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

            // User Management
            'user read', 'user create', 'user edit', 'user rolechange', 'user delete',

            // Role and Permission
            'role read', 'role create', 'role edit', 'role delete',

            // Branch
            'branch read', 'branch create', 'branch edit', 'branch delete',

            // Product
            'product read', 'product create', 'product edit', 'product delete',

            // Unit
            'unit read', 'unit create', 'unit edit', 'unit delete',

            // Purchase
            'purchase read', 'purchase create', 'purchase edit', 'purchase delete',

            // Customer
            'customer read', 'customer create', 'customer edit', 'customer delete',

            // Stock
            'stock read',


            // Supplier
            'supplier read', 'supplier create', 'supplier edit', 'supplier delete',

            // Category
            'category read', 'category create', 'category edit', 'category delete',

            // Brand
            'brand read', 'brand create', 'brand edit', 'brand delete',

            // Setting
            'setting read', 'setting create', 'setting edit', 'setting delete',

            // Order
            'order read', 'order create', 'order edit', 'order delete',

            //Profile
            'profile read', 'profile create', 'profile edit', 'profile delete',


        // Settings
            // Theme
            'theme read',




        // CRM Management
            // Lead Account
            'LeadAccount read' ,'LeadAccount create',  'LeadAccount edit', 'LeadAccount delete',

            // Lead Contact
            'LeadContact read', 'LeadContact create', 'LeadContact edit', 'LeadContact delete',

            // LeadDeal
            'LeadDeal read', 'LeadDeal create', 'LeadDeal edit', 'LeadDeal delete',

            // Lead Stage
            'LeadDealStage read' ,'LeadDealStage create',  'LeadDealStage edit', 'LeadDealStage delete',

            // Lead
            'Lead read' ,'Lead create',  'Lead edit', 'Lead delete',

            // LeadSource
            'LeadSource read' ,'LeadSource create',  'LeadSource edit', 'LeadSource delete',


        // Translation Management
            // language
            'language read' ,'language create',  'language edit', 'language delete',

            // Translation
            'Translation read' ,'Translation create',  'Translation edit', 'Translation delete',


        ];


        foreach ($permission_data as $data) {
            $permission = Permission::create( ['name' => $data]);
        }

        $role->syncPermissions(permission::all());




        $user = User::first();
        $user->assignRole($role);


    }
}
