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
        Schema::create('courier_infos', function (Blueprint $table) {
            $table->id();
            $table->string('order_id')->comment('Invoice Id');

            $table->string('consignment_id')->comment('Form courier');
            $table->string('status')->comment('Form courier');
            $table->string('provider_id')->comment('Form courier');
            $table->string('tracking_code')->comment('Form courier');

            $table->string('name');
            $table->string('address');
            $table->string('phone');
            $table->string('amount');
            $table->string('note')->nullable();
            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('courier_infos');
    }
};
