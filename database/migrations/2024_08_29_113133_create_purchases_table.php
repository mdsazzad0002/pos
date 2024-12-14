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
        Schema::create('purchases', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('purchase_id');
            $table->bigInteger('productId');
            $table->bigInteger('supplierId');
            $table->bigInteger('quantity');
            $table->bigInteger('unit_id')->nullable();
            $table->bigInteger('varinat_id')->nullable();
            $table->bigInteger('status')->reference('1 means approved 2 means cancel');
            $table->foreign('unit_id')->references('id')->on('units')->nullable();
            $table->foreign('varinat_id')->references('id')->on('variant_options')->nullable();
            $table->bigInteger('price');
            $table->bigInteger('total');
            $table->timestamp('buying_date')->nullable();
            $table->timestamp('expiring_date')->nullable();
            $table->string('creator')->default(0);
            $table->string('updater')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('purchases');
    }
};
