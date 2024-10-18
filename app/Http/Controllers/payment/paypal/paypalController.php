<?php
namespace App\Http\Controllers\Payment\Paypal;
use Omnipay\Omnipay;

use App\Http\Controllers\Controller;


class paypalController extends Controller
{

    protected $gateway;
    public function __construct(){
        // $httpClient = new Client(['verify' => false]);

        $this->gateway = Omnipay::create('PayPal_Rest');
        $this->gateway->setClientId('AW94vUy1U0BcDsirCdw3Ry8OXvfre6uAB2eLkhl4mXwbMBjRm4vTjNYiu3yIEk_zAM7jhMfYwQKZRaj9');
        $this->gateway->setSecret('EP3FKuvBoUKCdqTDMqrX_NB6U6Ljjzb0o-aptPsQSrjsXC1RmvrTnuGuEUQ0LU8mNOf8b4H9nYZBBtfo');
        $this->gateway->setTestMode(true);



    }

    public function purchase(array $data)
    {
        return $this->gateway->purchase($data)->send();
    }

    public function refund(array $data)
    {
        return $this->gateway->refund($data)->send();
    }
}
