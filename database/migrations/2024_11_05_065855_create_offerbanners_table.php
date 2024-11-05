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
        Schema::create('offer_banners', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->string('subtitle')->nullable();
            $table->string('image1')->default(0);
            $table->string('image2')->default(0);
            $table->string('image3')->default(0);
            $table->string('status')->default(0);
            $table->string('link')->default('#');
            $table->timestamp('offer_end_data')->nullable();

            $table->string('type')->default(0)->comment('1 => feature card 2 => full banner 3 => countdown');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('offer_banners');
    }
};
