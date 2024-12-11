<?php

namespace Database\Seeders\payment;

use App\Models\payment\PaymentCredential;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PaymentCredientialsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data = [

            [
                'provider' => 'Cash',
                'sandbox_status' => '1',
                'status'=> 1,

                'charge' => 0,
                'banach'=> 'dhaka',
                'country'=> 'bangladesh',
            ],
            [
                'provider' => 'AmarPay',
                'store_id' => 'aamarpaytest',
                'signature_key' => 'dbb74894e82415a2f7ff0ec3a97e4183',
                'sandbox_status' => '1',
                'status'=> 1,

                'charge' => 0,
                'banach'=> 'dhaka',
                'country'=> 'bangladesh',
            ],
            [
                'provider' => 'SSLCommerz',
                'store_id' => 'dengr6606dde118f61',
                'store_password' => 'dengr6606dde118f61@ssl',
                'sandbox_status' => '1',
                'status'=> 1,


                'charge' => 0,
                'banach'=> 'dhaka',
                'country'=> 'bangladesh',
            ],
            [
                'provider' => 'paypal',
                'client_id' => 'AW94vUy1U0BcDsirCdw3Ry8OXvfre6uAB2eLkhl4mXwbMBjRm4vTjNYiu3yIEk_zAM7jhMfYwQKZRaj9',
                'secret' => 'EP3FKuvBoUKCdqTDMqrX_NB6U6Ljjzb0o-aptPsQSrjsXC1RmvrTnuGuEUQ0LU8mNOf8b4H9nYZBBtfo',
                'sandbox_status' => '1',
                'status'=> 1,


                'charge' => 0,
                'banach'=> 'us',
                'country'=> 'us',
            ],
            [
                'provider' => 'stripe',
                'publishable' => 'pk_test_51QBS8gGmdDJ09IiPzuSRshs99WwkulloA8wW0rPt4vTORhFZUYXXa2LaxrySoZMgwcndwdnFbVTWsDkemFIJl43W00fxHQeYXV',
                'secret' =>  'sk_test_51QBS8gGmdDJ09IiPeBXzbzsKu4yZC3GLYepHUyK8uzqNeXl1hJan55DmOZpJMY5D3uHhNREjAU2qId5Y4SeaaMBS000ZwhS3JO',
                'sandbox_status' => '1',
                'status'=> 1,



                'charge' => 0,
                'banach'=> 'us',
                'country'=> 'us',
            ],
            [
                'provider' => 'braintree',
                'merchant_id' => 'bxqn974w5gzggj44',
                'public_key' =>  'wktqb878b2x7jj7r',
                'private_key' =>  '4d024a30390cb9475e556d475aaa399f',
                'sandbox_status' => '1',
                'status'=> 1,



                'charge' => 0,
                'banach'=> 'us',
                'country'=> 'us',
            ],
            [
                'provider' => 'Others',
                'sandbox_status' => '1',
                'status'=> 1,

                'charge' => 0,
                'banach'=> 'dhaka',
                'country'=> 'bangladesh',
            ],
        ];

        $count = PaymentCredential::count();
        if($count == 0){
            foreach($data as $items){
                $items_data = new PaymentCredential;
                foreach($items as $key => $value){
                    $items_data[$key] = $value;
                }
                $items_data->save();

            }

        }
    }
}

// $table->string('provider')->nullable();
// $table->string('store_id')->nullable();
// $table->string('store_password')->nullable();
// $table->string('merchant_id')->nullable();
// $table->string('api_key')->nullable();
// $table->string('signature_key')->nullable();
// $table->string('app_key')->nullable();
// $table->string('app_secret')->nullable();
// $table->string('username')->nullable();
// $table->string('password')->nullable();
// $table->string('merchant_id')->nullable();
// $table->string('merchant_number')->nullable();
// $table->string('merchant_number')->nullable();
// $table->string('public_key')->nullable();
// $table->string('private_key')->nullable();
// $table->string('sandbox_status')->default(1);
// $table->string('status')->default(1);
// $table->float('charge')->default(1);
// $table->string('banach')->nullable();
// $table->string('country')->nullable();

