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
        Schema::create('footer_styles', function (Blueprint $table) {
            $table->id();
            $table->string('key');
            $table->string('title');
            $table->string('upload_id')->nullable();
            $table->boolean('status')->default(0);
            $table->string('background_color')->nullable();
            $table->text('details')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('footer_styles');
    }
};
