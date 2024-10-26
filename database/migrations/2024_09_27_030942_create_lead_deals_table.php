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
        Schema::create('lead_deals', function (Blueprint $table) {
            $table->id();
            $table->string('note')->nullable();
            $table->string('note_replay')->nullable();
            $table->integer('amount')->nullable();
            $table->date('date')->nullable();
            $table->integer('stage_id')->default(0);
            $table->bigInteger('lead_id')->default(0);
            $table->bigInteger('creator')->default(0);
            $table->bigInteger('updater_id')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('lead_deals');
    }
};
