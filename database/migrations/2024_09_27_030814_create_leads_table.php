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
        Schema::create('leads', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('from_lead_id')->reference('Like 1 = facebook 2 = twitter 3 =email');
            $table->date('date');
            $table->bigInteger('contact_id')->default(0);
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
        Schema::dropIfExists('leads');
    }
};
