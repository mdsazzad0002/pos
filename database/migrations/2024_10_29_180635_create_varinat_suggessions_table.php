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
        Schema::create('varinat_suggessions', function (Blueprint $table) {
            $table->id();
            $table->string('key');
            $table->string('title')->nullable();
            $table->string('title_status')->default(1);

            $table->string('sub_title')->nullable();
            $table->string('sub_title_status')->default(1);

            $table->string('short_read_more')->default('Read More');
            $table->boolean('short_read_more_status')->default(1);

            $table->string('view_all')->default('See All');
            $table->boolean('view_all_status')->default(1);

            $table->integer('items_per_row')->default(3);

            $table->string('background')->default(0);
            $table->string('background_color')->default('#eeeeee');
            $table->boolean('background_type')->default(1);


            $table->string('controlby')->default(1)->comment('1 => Homepage');

            $table->integer('order')->default(1);
            $table->string('status')->default(1);

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
        Schema::dropIfExists('varinat_suggessions');
    }
};