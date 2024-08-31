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
            $table->bigInteger('productId');
            $table->bigInteger('supplierId');
            $table->bigInteger('quantity');
            $table->bigInteger('status')->reference('1 means aproned 2 means cancel');
            $table->bigInteger('price');
            $table->bigInteger('creator');
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
