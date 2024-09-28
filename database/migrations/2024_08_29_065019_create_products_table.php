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
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('sku')->nullable();
            $table->string('slug')->nullable();
            $table->string('category')->nullable();
            $table->string('brand')->nullable();
            $table->string('weight')->nullable();
            $table->string('description')->nullable();

            $table->integer('buying_price')->default(0);
            $table->integer('selling_price')->default(0);

            $table->string('unit')->nullable();
            $table->string('for_selling')->default(0);
            $table->string('garage')->default(0);
            $table->string('route')->default(0);

            $table->string('alert_quantity')->default(0);
            $table->string('quantity')->default(0);

            $table->string('variant_on')->default(0);
            $table->string('variant_option')->nullable();

            $table->string('discount_id')->nullable();

            $table->string('creator')->default(0);
            $table->string('upload_id')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
