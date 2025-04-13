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
        Schema::create('categories', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('creator');
            $table->string('name');
            $table->string('slug');
            $table->bigInteger('position_order')->default(0);

            $table->text('description')->nullable();
            $table->longText('primary_description')->nullable();
            $table->longText('additional_description')->nullable();
            $table->string('need_additional')->default(1);
            
            $table->string('status')->default(1);
            $table->string('upload_id')->nullable();
            $table->string('upload_bg')->nullable();
            $table->boolean('service_status')->default(0);
            
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('categories');
    }
};
