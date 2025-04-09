<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\fcm;
use App\Models\unit;
use App\Models\User;
use App\Models\brand;
use App\Models\order;
use App\Models\Device;
use App\Models\product;
use App\Models\Category as Category;
use App\Models\Customer as customer;
use App\Models\purchase;
use App\Models\supplier;
use App\Mail\MailerDynamic;
use App\Models\area;
use App\Models\language\language;
use App\Models\language\Translation;
use Illuminate\Http\Request;
use App\Models\mail\MailSetting;
use App\Models\mail\MailTemplate;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Models\payment\PaymentCredential;
use App\Models\setting;
use App\Models\SubCategory;
use App\Models\MailBox;
use App\Notifications\NotificationDynamic;
use Illuminate\Support\Facades\Notification;

use Mpdf\QrCode\QrCode;
use Mpdf\QrCode\Output;


class dashboardController extends Controller
{
    public function index(){
        $current_url = url('/');
        $qrCode = new QrCode($current_url);


        // // Echo an HTML table
        $output = new Output\Html();
        $data = $output->output($qrCode);

        return view('admin.dashboard.index', compact('data'));
    }

    public function items_load_card(Request $request)
    {
        $query = 0;
        if ($request->has('items') ) {
            $items_req =  trim($request->items);

            if ($items_req === 'users') {
                $query = User::query(); // Start the query for the User model
            }elseif($items_req === 'orders'){
                $query = order::query(); // Start the query for the User model

            }elseif($items_req === 'brands'){
                $query = brand::query(); // Start the query for the User model

            }elseif($items_req === 'products'){
                $query = product::query(); // Start the query for the User model

            }elseif($items_req === 'suppliers'){
                $query = supplier::query(); // Start the query for the User model

            }elseif($items_req === 'purchases'){
                $query = purchase::query(); // Start the query for the User model

            }elseif($items_req === 'categories'){
                $query = category::query(); // Start the query for the User model

            }elseif($items_req === 'subcategories'){
                $query = SubCategory::query(); // Start the query for the User model

            }elseif($items_req === 'roles'){
                $query = Role::query(); // Start the query for the User model

            }elseif($items_req === 'units'){
                $query = unit::query(); // Start the query for the User model

            }elseif($items_req === 'customers'){
                $query = customer::query(); // Start the query for the User model

            }elseif($items_req === 'fcms'){
                $query = fcm::query(); // Start the query for the User model

            }elseif($items_req === 'payment'){
                $query = PaymentCredential::query(); // Start the query for the User model

            }elseif($items_req === 'mail_template'){
                $query = MailTemplate::query(); // Start the query for the User model

            }elseif($items_req === 'mail_config'){
                $query = MailSetting::query(); // Start the query for the User model

            }elseif($items_req === 'translation'){
                $query = Translation::query(); // Start the query for the User model

            }elseif($items_req === 'device_log'){
                $query = Device::query(); // Start the query for the User model

            }elseif($items_req === 'lanuage'){
                $query = language::query(); // Start the query for the User model


            }elseif($items_req === 'areas'){
                $query = area::query(); // Start the query for the User model
            }elseif($items_req === 'fcm'){
                $query = fcm::query(); // Start the query for the User model
            }elseif($items_req === 'mail_box'){
                $query = MailBox::query(); // Start the query for the User model

            }else{
                $query = setting::query(); // Start the query for the User model

            }

            // Check for additional conditions in the 'where' parameter
            if ($request->has('where')) {
                $items = explode(',', trim($request->where));
                foreach ($items as $item) {

                    // pwa Progressive web application
                    if($items_req === 'pwa' && $item === 'status'){
                        $query->where('name', 'pwa_status');
                        return $query->first()->value ? 'Active' : 'Inactive';
                    } elseif ($items_req === 'pwa') {
                        $query->where('key', 20);

                    // takto maessage application
                    }elseif($items_req === 'takto' && $item === 'status'){
                        $query->where('name', 'tawk_to_status');
                        return $query->first()->value ? 'Active' : 'Inactive';
                    } elseif ($items_req === 'takto') {
                        $query->where('key', 31);

                    // Cookie managment
                    }elseif($items_req === 'cookie' && $item === 'status'){
                        $query->where('name', 'cookie_status');
                        return $query->first()->value ? 'Active' : 'Inactive';

                    }elseif($items_req === 'cookie'){
                        $query->where('key', 40);

                    // Main Settings managment
                    }elseif($items_req === 'main_settings' && $item === 'app_preloader_status'){
                        $query->where('name', 'app_preloader_status');
                        return $query->first()->value ? 'Active' : 'Inactive';

                    }elseif($items_req === 'main_settings'){
                        $query->where('key', 9);

                    // Tag managment

                    }elseif($items_req === 'tag'){
                        $query->where('key', 24);

                    }elseif($items_req === 'translation'){
                        $query->where('language', $item);

                        // Site verification
                    }elseif($items_req === 'site_verification'){
                        $query->where('key', 25);

                        // fcm information
                    }elseif ($items_req === 'fcm' && $item === 'status') {
                        return $query->first()->fcm_status_key ? 'Active' : 'Inactive';


                    }elseif ($item === 'active') {
                        $query->where('status', 1);

                    }elseif($item === 'inactive'){
                        $query->where('status', 0);

                    }elseif($item === 'sandbox'){
                        $query->where('sandbox_status', 1);

                    }elseif($item === 'suspanded_device'){
                        $query->where('suspend_date','!=', null);

                    }elseif($item === 'active_device'){
                        $query->where('suspend_date', null);

                    }elseif($item === 'lastactive'){
                        // active time
                        $lastActivity = $query->orderBy('last_activity', 'desc')->first();
                        if ($lastActivity && $lastActivity->last_activity) {
                            // Format the last_activity date
                            return $lastActivity = Carbon::createFromTimestamp($lastActivity->last_activity)->diffForHumans();

                        } else {
                            $lastActivity = 0; // Default value if no activity found
                        }
                        // end active time

                    }elseif($item === 'sandbox'){
                        $query->where('sandbox_status', 1);

                    }elseif($item === 'decimal'){
                        $query->where('decimal', 1);

                    }elseif($item === 'sub_items '){
                        $query->where('sub_items', '!=',  0);
                        $query->where('sub_items', '!=',  null);

                    }elseif($item === 'feature'){
                        $query->where('feature', 1);

                    }elseif($item === 'service'){
                        $query->where('service', 1);

                    }elseif($item === 'items'){
                        $query->where('service', 1);



                    }
                }
            }

            // Return the count based on the constructed query
            return response()->json( $query->count());
        }


        return response()->json(0); // Handle invalid requests
    }


}
