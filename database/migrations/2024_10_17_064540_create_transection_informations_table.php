<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('transection_information', function (Blueprint $table) {
            $table->id();
            $table->integer('payment_method_id');
            $table->string('user_id')->nullable();
            $table->string('location_id')->nullable();
            $table->string('order_id')->nullable();

            $table->string('name')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->string('address')->nullable();
            $table->string('status')->nullable();
            $table->string('mer_txnid')->nullable();
            $table->string('currency')->nullable();
            $table->string('ip_address')->nullable();
            $table->string('by_method')->nullable();
            $table->string('description')->nullable();
            $table->string('tnx_id_by_user')->nullable();

            $table->string('amount')->nullable();

            // form payment service provider
            $table->string('store_amount')->nullable();
            $table->string('service_charge')->nullable();

            // by select from website
            $table->string('payment_charge')->nullable();
            $table->text('all_response')->nullable();

            $table->string('secret')->nullable();
            $table->string('PayerID')->nullable();
            $table->string('token')->nullable();
            $table->string('client_id')->nullable();


            $table->string('updater')->default(0);
            $table->string('creator')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transection_informations');
    }
};
