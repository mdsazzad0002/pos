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
        Schema::create('vats', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('type')->default(1)->comment('0 means include  1 means exclude');
            $table->string('status')->default(1);
            $table->string( 'amount')->nullable();
            $table->string( 'creator')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('vats');
    }
};
