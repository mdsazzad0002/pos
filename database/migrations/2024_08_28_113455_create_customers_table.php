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
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string('name')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();

            $table->string('shop_name')->nullable();
            $table->string('shop_phone')->nullable();
            $table->string('shop_address')->nullable();
            $table->string('type')->nullable();

            $table->string('user_id')->nullable();
            $table->foreign('user_id')->references('id')->on('users')->nullable();
            $table->string('creator')->nullable();
            $table->string('location')->nullable();
            $table->string('account_holder')->nullable();
            $table->string('account_number')->nullable();
            $table->text('note')->nullable();
            $table->string('bank_name')->nullable();
            $table->integer('credit_limit')->nullable();
            $table->integer('prev_due')->nullable();
            $table->integer('area')->nullable();
            $table->integer('password')->nullable();

            $table->string('bank_branch')->nullable();
            $table->string('upload_id')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('customers');
    }
};
