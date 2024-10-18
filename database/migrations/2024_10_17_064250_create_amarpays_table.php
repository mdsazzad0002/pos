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
        Schema::create('payment_credentials', function (Blueprint $table) {
            $table->id();
            $table->string('provider')->nullable();
            $table->string('store_id')->nullable();
            $table->string('store_password')->nullable();
            $table->string('merchant_id')->nullable();
            $table->string('api_key')->nullable();
            $table->string('signature_key')->nullable();
            $table->string('app_key')->nullable();
            $table->string('app_secret')->nullable();
            $table->string('username')->nullable();
            $table->string('password')->nullable();
            $table->string('merchant_number')->nullable();
            $table->string('public_key')->nullable();
            $table->string('private_key')->nullable();
            $table->string('client_id')->nullable();
            $table->string('secret')->nullable();


            $table->string('sandbox_status')->default(1);
            $table->string('status')->default(1);
            
            $table->float('charge')->default(1);
            $table->string('banach')->nullable();
            $table->string('country')->nullable();


            $table->bigInteger('creator')->default(1);
            $table->bigInteger('updater')->default(1);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('amarpays');
    }
};
