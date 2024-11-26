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
        Schema::create('cash_counters', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->foreignId('branch_id')->constrained()->onDelete('cascade');
            $table->boolean('status')->default(1);
            $table->string('creator')->default(0);
            $table->string('updater')->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cash_counters');
    }
};
