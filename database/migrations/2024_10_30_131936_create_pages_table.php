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
        Schema::create('pages', function (Blueprint $table) {
            $table->id();


            $table->string('name')->nullable();
            $table->string('slug')->nullable();
            $table->string('status')->default(1);

            $table->string('homepage')->default(0);
            $table->string('order')->default(1);
            $table->string('page_type')->nullable()->comment('Like filter, homepage');
            $table->string('creator')->default(0);
            $table->string('updater')->default(0);
            $table->string('permission')->nullable();
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pages');
    }
};
