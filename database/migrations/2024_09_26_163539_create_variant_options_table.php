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
        Schema::create('variant_options', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_id');
            $table->string('name')->nullable();
            $table->string('details_key_value_0')->nullable();
            $table->string('details_key_value_1')->nullable();
            $table->string('details_key_value_2')->nullable();
            $table->string('details_key_value_3')->nullable();
            $table->string('details_key_value_4')->nullable();
            $table->string('details_key_value_5')->nullable();
            $table->string('details_key_value_6')->nullable();
            $table->string('details_key_value_7')->nullable();
            $table->string('details_key_value_8')->nullable();
            $table->string('details_key_value_9')->nullable();
            $table->string('details_key_value_10')->nullable();
            $table->string('details_key_value_11')->nullable();
            $table->string('details_key_value_12')->nullable();
            $table->string('details_key_value_13')->nullable();
            $table->string('details_key_value_14')->nullable();
            $table->string('details_key_value_15')->nullable();
            $table->string('details_key_value_16')->nullable();
            $table->string('details_key_value_17')->nullable();
            $table->string('details_key_value_18')->nullable();
            $table->string('details_key_value_19')->nullable();

            $table->string('old_price')->default(0);
            $table->string('selling_price')->default(0);

            $table->string('alert_quantity')->default(0);
            $table->bigInteger('quantity')->default(0);

            $table->bigInteger('creator')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('variant_options');
    }
};
