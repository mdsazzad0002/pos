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
            $table->string('product_id')->nullable();
            $table->string('sku')->nullable();
            $table->string('slug')->nullable();
            $table->string('category')->nullable();
            $table->string('brand')->nullable();
            $table->string('weight')->nullable();
            $table->string('description')->nullable();

            $table->string('unit')->nullable();
            $table->string('for_selling')->default(0);
            $table->string('garage')->default(0);
            $table->string('route')->default(0);
            $table->string('feature')->default(0);

            $table->string('alert_quantity')->default(0);
            $table->string('quantity')->default(0);


            $table->string('discount_id')->nullable();
            $table->string('creator')->default(0);
            $table->string('upload_id')->default(0);
            $table->string('sub_category')->nullable();


            $table->string('short_description')->nullable();
            $table->string('youtube_video')->nullable();
            $table->string('tags')->nullable();


            $table->bigInteger('views')->default(0);

            $table->integer('buying_price')->default(0);
            $table->integer('old_price')->default(0);
            $table->integer('selling_price')->default(0);


            $table->string('vat')->default(0);
            $table->boolean('service')->default(0);

            $table->string('variant_on')->default(0);
            $table->string('variant_option')->nullable();
            $table->string('status')->nullable();


            $table->string('landing_page_bg')->nullable();
            $table->string('landing_page_color')->nullable();
            $table->string('landing_page_deasing_id')->nullable();





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
