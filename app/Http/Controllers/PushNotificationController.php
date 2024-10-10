<?php
    // require __DIR__ . '/vendor/autoload.php';

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Minishlink\WebPush\WebPush;
use Minishlink\WebPush\Subscription;

class PushNotificationController extends Controller
{

    public function index(){
        return view('noti');
    }

    public function subscribe(){
        $subscription = json_decode(file_get_contents('php://input'), true);

        if (!isset($subscription['endpoint'])) {
            echo 'Error: not a subscription';
            return;
        }

        $method = $_SERVER['REQUEST_METHOD'];

        switch ($method) {
            case 'POST':
                // create a new subscription entry in your database (endpoint is unique)
                break;
            case 'PUT':
                // update the key and token of subscription corresponding to the endpoint
                break;
            case 'DELETE':
                // delete the subscription corresponding to the endpoint
                break;
            default:
                echo "Error: method not handled";
                return;
        }

    }
    public function sendNotification(Request $request)
    {


        // here I'll get the subscription endpoint in the POST parameters
        // but in reality, you'll get this information in your database
        // because you already stored it (cf. push_subscription.php)
        $data = array('endpoint' => 'https://fcm.googleapis.com/fcm/send/c2MWrQUpAoU:APA91bEkACa2T9fuP41nc-MSo8CyNMwGFzPJt9fDl6xJxbBuLAir4dbMXx6rbJwtFsX6DjlgLxAO3uCnVHNVhfHcjgsbw_FpUC0P14P3OZ69GXjJ5XBRfpZudRLIWr-6qITBkj050od7', 'expirationTime' => null, 'keys' => array('p256dh' => 'BNGgj5ijeFtJ2qZ-RY36nzbQ5ZbHZWCvivU8XQYmxwdEMf2ODutyuoNR6wcf2GyHEs9nD7VFrMwraA_VKoVR5no', 'auth' => 'U8oriauE3kLYd_RkHgjv6A'), 'contentEncoding' => 'aes128gcm');

        // $subscription = Subscription::create($data );
        $subscription = Subscription::create(json_decode(file_get_contents('php://input'), true));

        $auth = array(
            'VAPID' => array(
                'subject' => 'https://github.com/Minishlink/web-push-php-example/',
                // 'publicKey' => 'BMBlr6YznhYMX3NgcWIDRxZXs0sh7tCv7_YCsWcww0ZCv9WGg-tRCXfMEHTiBPCksSqeve1twlbmVAZFv7GSuj0', // don't forget that your public key also lives in app.js
                'publicKey' => 'BEaBNMfmaFzxbCbix8u9SnnGpcQljcz6CwrxLTw5xGoljkGZsdm5zpuqpHmkS3djcaJTI_pmRmYTjhodXn0xnLA',
                // 'privateKey' => 'vplfkITvu0cwHqzK9Kj-DYStbCH_9AhGx9LqMyaeI6w', // in the real world, this would be in a secret file
                'privateKey' => '9IzLk8M_5OjGgIT5xLYyRoSHbkTl2wR4tSIgTJiikOs',
            ),
        );



        $webPush = new WebPush($auth);

        $report = $webPush->sendOneNotification(
            $subscription,
            '{"message":"Hello! 👋"}',
        );

        // handle eventual errors here, and remove the subscription from your server if it is expired
        $endpoint = $report->getRequest()->getUri()->__toString();

        if ($report->isSuccess()) {
            echo "[v] Message sent successfully for subscription {$endpoint}.";
        } else {
            echo "[x] Message failed to sent for subscription {$endpoint}: {$report->getReason()}";
        }

    }
}
