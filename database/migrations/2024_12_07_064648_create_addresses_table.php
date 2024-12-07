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
        Schema::create('addresses', function (Blueprint $table) {
            $table->id();
            $table->string('address_type')->nullable();
            $table->string('village')->nullable();
            $table->string('post')->nullable();
            $table->string('post_code')->nullable();
            $table->string('district')->nullable();
            $table->string('stay_time')->nullable();
            $table->string('country')->nullable();
            $table->string('creator')->nullable();
            $table->string('updater')->nullable();
            $table->morphs('addressable');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('addresses');
    }
};
