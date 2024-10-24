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
        Schema::create('footer_link_sub_headings', function (Blueprint $table) {
            $table->id();
            $table->string('heading_id')->default(1);
            $table->string('title')->nullable();
            $table->string('url')->nullable();
            $table->string('icon')->nullable();
            $table->boolean('status')->default(0);
            $table->string('updater')->default(0);
            $table->string('creator')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('footer_link_sub_headings');
    }
};
