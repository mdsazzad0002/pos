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
        Schema::create('salaries', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('amount')->default(0);
            $table->bigInteger('user_id')->default(0);
            $table->bigInteger('month')->default(0);
            $table->bigInteger('year')->default(0);
            $table->string('description')->nullable();
            $table->bigInteger('creator')->default(0);
            $table->integer('status')->default(0)->reference('1 = Paid, 2= Partial paid, 0 = Unpaid ');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('salaries');
    }
};
