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
        Schema::create('sub_categories', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('creator');
            $table->string('name');
            $table->string('slug');
            
            $table->text('description')->nullable();
            $table->longText('primary_description')->nullable();
            $table->longText('additional_description')->nullable();
            $table->string('need_additional')->default(1);

            $table->string('category_id');
            $table->string('status')->default(1);
            $table->string('feature')->default(0);
            $table->string('upload_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sub_categories');
    }
};
