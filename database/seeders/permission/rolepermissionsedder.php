<?php

namespace Database\Seeders\permission;


use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use DB;

class rolepermissionsedder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $role_count = Role::count();
        if ($role_count == 0) {
            $role = Role::create(['name' => 'superadmin']);
        }else{
            $role = Role::where('name', 'superadmin')->first();
        }

            $permission_data = [

                // User Management
                'user read', 'user create',  'user edit', 'user rolechange', 'user delete',

                // Role and Permission
                'role read',  'role create',  'role edit',  'role delete',

                // Branch
                'branch read', 'branch create', 'branch edit', 'branch delete',

                // CAshcounter
                'cashcounter read', 'cashcounter create', 'cashcounter edit', 'cashcounter delete',


                // Product
                'product read', 'product create', 'product edit', 'product delete', 'product barcode',

                // Unit
                'unit read', 'unit create', 'unit edit', 'unit delete',

                // Purchase
                'purchase read',  'purchase create', 'purchase edit', 'purchase delete',

                // Customer
                'customer read', 'customer create', 'customer edit', 'customer delete',

                // Stock
                'stock read',

               


                // Supplier
                'supplier read', 'supplier create',  'supplier edit', 'supplier delete',

                // Category
                'category read',  'category create', 'category edit', 'category delete',

                // subcategory
                'subcategory read',  'subcategory create', 'subcategory edit', 'subcategory delete',

                // Area
                'area read',  'area create', 'area edit', 'area delete',

                // Brand
                'brand read',  'brand create', 'brand edit',  'brand delete',
                
                
                // Client
                'client read',  'client create', 'client edit',  'client delete',
                'project read',  'project create', 'project edit',  'project delete',

                // Brand
                'vat read',  'vat create', 'vat edit',  'vat delete',

                // Discoount
                'discount read',  'discount create', 'discount edit',  'discount delete',

                // Pos
                'pos read',  'pos create', 'pos edit',  'pos delete',


                //[[[ Setting
                        // 'setting read', 'setting create', 'setting edit',  'setting delete',

                        // Site Verification Setting
                        'siteverification read', 'siteverification edit',

                        // Tag Management Setting
                        'tagmanagement read',  'tagmanagement edit',

                        // Progressive Web Application Setting
                        'pwa read',  'pwa edit',

                        // Notification Setting
                        'notification read',  'notification edit',

                        // Tak.to Setting
                        'takto read',  'takto edit',

                        // Tak.to Setting
                        'cookie read',  'cookie edit',

                        // SMTP Setting
                        'smtp read',  'smtp edit',

                        // Tak.to Setting
                        'payment_credentials read',  'payment_credentials edit',


                        // Maintanance Setting
                        'maintenance mode', 'maintenance debug', 'maintenance database',

                        // Database backup
                        'database backup',

                        'device_access_check read',
                        'settings payment_configration',

                      'settings main',   'settings notification', 'settings site_verification', 'settings site_tag', 
                      'settings tracking_report', 'settings site_pwa',  'settings messagesdk',  'settings cookie',
                      'settings email_setting',
                      'imap management', 'settings sms_configration',


                       // courier
                        'settings courier_configration',
                        'settings custom_js_css',
                        'sms_configration',


                //]]]

                // Order
                'order read',
                'order create',
                'order edit',
                'order delete',

                // whychooseus
                'whychooseus read',
                'whychooseus create',
                'whychooseus edit',
                'whychooseus delete',

                // achivement
                'achivement read',
                'achivement create',
                'achivement edit',
                'achivement delete',

                // custom order
                'custom_order type read', 'custom_order bulk read', 'custom_order custom read',

                // custom order_status
                'order_status read', 'order_status delete', 'order_status edit', 'order_status create',

                // offerbanner
                'offerbanner read',
                'offerbanner create',
                'offerbanner edit',
                'offerbanner delete',

                //Profile
                'profile read',
                'profile create',
                'profile edit',
                'profile delete',



                // Settings
                // Theme
                'theme read',




                // CRM Management
                // Lead Account
                'LeadAccount read',
                'LeadAccount create',
                'LeadAccount edit',
                'LeadAccount delete',
          
          
                // Category blog Account
                'blog category read',
                'blog category create',
                'blog category edit',
                'blog category delete',


                //  blog Account
                'blog read',
                'blog create',
                'blog edit',
                'blog delete',

                // Service-point  Account
                'service-point read',
                'service-point create',
                'service-point edit',
                'service-point delete',


                //  Service-request Account
                'service-request read',
                'service-request create',
                'service-request edit',
                'service-request delete',

                // Subscriber
                'sub-scribers read',
                'sub-scribers create',
                'sub-scribers edit',
                'sub-scribers delete',
                'sub-scribers mailer',



                // Lead Contact
                'LeadContact read',
                'LeadContact create',
                'LeadContact edit',
                'LeadContact delete',

                // LeadDeal
                'LeadDeal read',
                'LeadDeal create',
                'LeadDeal edit',
                'LeadDeal delete',

                // Lead Stage
                'LeadDealStage read',
                'LeadDealStage create',
                'LeadDealStage edit',
                'LeadDealStage delete',

                // Lead
                'Lead read',
                'Lead create',
                'Lead edit',
                'Lead delete',

                // LeadSource
                'LeadSource read',
                'LeadSource create',
                'LeadSource edit',
                'LeadSource delete',


                // Translation Management
                // language
                'language read',
                'language create',
                'language edit',
                'language delete',

                // Translation
                'Translation read',
                'Translation create',
                'Translation edit',
                'Translation delete',




                // CMS Seeder
                   // Translation
                   'slider read',
                   'slider create',
                   'slider edit',
                   'slider delete',


                   // Translation
                   'service read',
                   'service create',
                   'service edit',
                   'service delete',

                   // testimonial
                   'testimonial read',
                   'testimonial create',
                   'testimonial edit',
                   'testimonial delete',


                   // footerlinkheading
                   'footerlinkheading read',
                   'footerlinkheading create',
                   'footerlinkheading edit',
                   'footerlinkheading delete',

                   // footerlinksubheading
                   'footerlinksubheading read',
                   'footerlinksubheading create',
                   'footerlinksubheading edit',
                   'footerlinksubheading delete',

                   // headernav management
                   'headernav read',
                   'headernav create',
                   'headernav edit',
                   'headernav delete',




                   // faq
                   'faq read',
                   'faq create',
                   'faq edit',
                   'faq delete',

                   // page
                   'page read',
                   'page create',
                   'page edit',
                   'page delete',


                   'migrate seed',
                   'migrate',
                   'catche clear',
                   'migrate fresh'
            ];


            Permission::truncate();
            DB::table('role_has_permissions')->truncate();
           

            foreach ($permission_data as $data) {

                if (Permission::where('name', $data)->exists()) {
                    echo $data . ' already exists' . "\n";
                    continue;
                }
                $permission = Permission::updateOrCreate(['name' => $data, 'guard_name' => 'web']);
            }

            $role->syncPermissions(permission::all());




            $user = User::first();
            $user->assignRole($role);
        
    }
}
