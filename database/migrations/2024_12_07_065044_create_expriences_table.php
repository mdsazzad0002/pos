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
        Schema::create('expriences', function (Blueprint $table) {
            $table->id();
            $table->string('company')->nullable();
            $table->string('designation')->nullable();
            $table->string('joining_date')->nullable();
            $table->string('exit_date')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('expriences');
    }
};
