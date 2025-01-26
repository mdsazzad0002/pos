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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('customer_id')->default(0);
            $table->bigInteger('order_id')->default(0);
            $table->text('product_ids')->nullable();
            $table->longText('product_json')->nullable();
            $table->string('delivery_status')->default(0);
            $table->integer('quantity')->default(0);
            $table->string('quantitys')->default(0);
            $table->string('discount_id')->default(0);
            $table->integer('price')->default(0);
            $table->string('vat')->default(0);
            $table->string('status')->default(0);
            $table->text('note')->nullable();


            $table->string('shipping_charge_id')->default(0);

            $table->string('address')->default(0);
            $table->string('billing_address')->default(0);

            $table->integer('cash_collection')->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
