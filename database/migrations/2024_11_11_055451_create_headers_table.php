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
        Schema::create('headers', function (Blueprint $table) {
            $table->id();
            $table->string('name')->default('');
            $table->string('slug')->default('#')->default('');

            $table->string('position')->comment(' left ,  center,  right');
            $table->integer('order')->default(0);

            $table->integer('page_id')->default(0);
            $table->boolean('is_page')->default(0);

            $table->boolean('is_text')->default(0);
            $table->boolean('status')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('headers');
    }
};
