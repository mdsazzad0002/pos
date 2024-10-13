<?php
// require __DIR__ . '/vendor/autoload.php';

namespace App\Http\Controllers;


use App\Models\Device;
use App\Models\fcm;
use Illuminate\Http\Request;
use Minishlink\WebPush\WebPush;
use Minishlink\WebPush\Subscription;

// here I'll get the subscription endpoint in the POST parameters
// but in reality, you'll get this information in your database
// because you already stored it (cf. push_subscription.php)
// $data = array('endpoint' => 'https://fcm.googleapis.com/fcm/send/c2MWrQUpAoU:APA91bEkACa2T9fuP41nc-MSo8CyNMwGFzPJt9fDl6xJxbBuLAir4dbMXx6rbJwtFsX6DjlgLxAO3uCnVHNVhfHcjgsbw_FpUC0P14P3OZ69GXjJ5XBRfpZudRLIWr-6qITBkj050od7', 'expirationTime' => null, 'keys' => array('p256dh' => 'BNGgj5ijeFtJ2qZ-RY36nzbQ5ZbHZWCvivU8XQYmxwdEMf2ODutyuoNR6wcf2GyHEs9nD7VFrMwraA_VKoVR5no', 'auth' => 'U8oriauE3kLYd_RkHgjv6A'), 'contentEncoding' => 'aes128gcm');


class PushNotificationController extends Controller
{

    public function index()
    {
        $fcm = fcm::first();
        return view('admin.notification.index', compact('fcm'));
    }

    public function store(Request $request)
    {
        $new_fcm = fcm::first();
        $new_fcm->fcm_public_key = $request->fcm_public_key;
        $new_fcm->fcm_private_key  = $request->fcm_private_key;
        $new_fcm->fcm_status_key  = $request->fcm_status_key;
        $new_fcm->save();
    }

    public function subscribe()
    {
        $subscription = file_get_contents('php://input');
        $device_id = session()->get('user' . auth()->user()->id);
        $device = Device::find($device_id);
        if ($device) {
            $device->notification_data = $subscription;
            $device->save();
            return 'subscribed';
        }

        return 'Unsubscribed';
    }

    /**
     * Summary of sendNotification
     * @param \Illuminate\Http\Request $request | user_id, fcm_title, fcm_message
     * @return void
     */
    public function sendNotification(Request $request)
    {
        $request['user_id'] = 1;
        if ($request->has('user_id')) {
            $fcm_title = $request->fcm_title ?? 'fcm_title';
            $fcm_message = $request->fcm_message ?? 'fcm_message';
        } else {
            $fcm_title = "Welcome " . auth()->user()->name;
            $fcm_message = "Successfully Checked. ";
        }
        $fcm_url = $request->target_url ?? url('admin');
        $fcm_icon = settings('app_image', 9);


        $auth_admin = fcm::first();
        $auth = array(
            'VAPID' => array(
                'subject' => 'https://github.com/Minishlink/web-push-php-example/',
                'publicKey' => $auth_admin->fcm_public_key ?? '', //'BEaBNMfmaFzxbCbix8u9SnnGpcQljcz6CwrxLTw5xGoljkGZsdm5zpuqpHmkS3djcaJTI_pmRmYTjhodXn0xnLA',
                'privateKey' => $auth_admin->fcm_private_key ?? '', //9IzLk8M_5OjGgIT5xLYyRoSHbkTl2wR4tSIgTJiikOs',
            ),
        );




        $webPush = new WebPush($auth);
        if ($request->has('user_id')) {
            $daws_filter = \Carbon\Carbon::now()->subDays(7);
            $subscriptions = device::where('creator', $request->user_id)->where('updated_at', '>', $daws_filter)->where('notification_data', '!=', null)->where('logout', 0)->pluck('notification_data')->toArray();
            foreach($subscriptions as $subscription){
                $subscription = Subscription::create(json_decode($subscription, true));
                $report = $webPush->sendOneNotification(
                    $subscription,
                    '{"body": "' . $fcm_message . '", "title": "' . $fcm_title . '",
                    "icon": "' . $fcm_icon . '",
                    "url":"' . $fcm_url . '"}'
                );
            }
        } else {
            $subscription = Subscription::create(json_decode(file_get_contents('php://input'), true));
            $report = $webPush->sendOneNotification(
                $subscription,
                '{"body": "' . $fcm_message . '", "title": "' . $fcm_title . '",
                "icon": "' . $fcm_icon . '",
                "url":"' . $fcm_url . '"}'
            );
        }


        // handle eventual errors here, and remove the subscription from your server if it is expired
        $endpoint = $report->getRequest()->getUri()->__toString();

        if ($report->isSuccess()) {
            echo "[v] Message sent successfully for subscription {$endpoint}.";
        } else {
            echo "[x] Message failed to sent for subscription {$endpoint}: {$report->getReason()}";
        }
    }
}
