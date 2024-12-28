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
        Schema::create('courier_credentials', function (Blueprint $table) {
            $table->id();
            $table->string('upload_id')->nullable();
            $table->string('provider')->nullable();
            $table->string('Secret_Key')->nullable();
            $table->string('Api_Key')->nullable();
            $table->string('client_id')->nullable();
            $table->string('client_secret')->nullable();
            $table->string('secret_token')->nullable();
            $table->string('key')->nullable();

            $table->string('sandbox_status')->default(1);
            $table->string('status')->default(1);

            $table->bigInteger('creator')->default(1);
            $table->bigInteger('updater')->default(1);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('couriers');
    }
};
