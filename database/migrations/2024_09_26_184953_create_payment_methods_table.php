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
        Schema::create('payment_methods', function (Blueprint $table) {
            $table->id();
            $table->string('card_holder');
            $table->string('account_no');
            $table->string('identifier_code');
            $table->string('provider')->nullable();
            $table->string('branch')->nullable();
            $table->float('charge')->default(0);
            $table->string('creator')->default(0);
            $table->string('updater')->default(0);
            $table->morphs('paymethodable');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payment_methods');
    }
};
