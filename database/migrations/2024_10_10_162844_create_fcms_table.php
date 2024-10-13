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
        Schema::create('fcms', function (Blueprint $table) {
            $table->id();
            $table->string('fcm_private_key')->nullable();
            $table->string('fcm_public_key')->nullable();
            $table->boolean('fcm_status_key')->default(0);
            $table->bigInteger('creator')->nullable();
            $table->bigInteger('updater_id')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('fcms');
    }
};
