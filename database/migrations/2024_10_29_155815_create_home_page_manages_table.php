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
        Schema::create('home_page_manages', function (Blueprint $table) {
            $table->id();
            $table->string('key');
            $table->text('title')->nullable();
            $table->string('title_status')->default(1);

            $table->text('sub_title')->nullable();
            $table->string('sub_title_status')->default(1);


            $table->string('short_read_more')->default('Read More');
            $table->boolean('short_read_more_status')->default(1);
            $table->string('short_read_more_page_url')->nullable();

            $table->string('view_all')->default('See All');
            $table->boolean('view_all_status')->default(1);
            $table->string('view_all_page_url')->nullable();


            $table->integer('items_per_row')->default(3);
            $table->integer('items_show')->default(4);

            $table->integer('is_details_page')->default(0);
            $table->integer('details_or_view_all_align')->default('center');




            $table->string('background')->default(0); //default upload id
            $table->string('background_color')->default('#eeeeee');
            $table->boolean('background_type')->default(1);


            $table->string('controlby')->default(1)->comment('1 => Homepage');


            $table->integer('order')->default(1);
            $table->string('status')->default(1);

            $table->string('creator')->default(0);
            $table->string('updater')->default(0);
            $table->softDeletes();
            $table->timestamps();

            $table->string('category')->default('0');
            $table->string('title_style')->default('title_style_0');


            $table->string('upload_id1')->default(0);   //Define background title image
            $table->string('upload_id2')->default(0); //Define background title image


            $table->string('upload_id3')->default(0); //Define background slider side  image


        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('home_page_manages');
    }
};
