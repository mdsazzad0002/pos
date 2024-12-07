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
        Schema::create('social_contacts', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('lead_source_id');
            $table->string('url');
            $table->string('creator');
            $table->string('updater');
            $table->morphs('sociable');
            $table->softDeletes();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('social_contacts');
    }
};
