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
            $table->string('title_status')->default(1); //for show
            $table->string('title_manage_status')->default(1); //for manage


            $table->string('sub_title')->nullable();
            $table->string('sub_title_status')->default(1); //for show
            $table->string('sub_title_manage_status')->default(1); //for manage


            $table->string('short_read_more')->default('Read More');
            $table->string('short_read_more_page_url')->nullable();
            $table->boolean('short_read_more_status')->default(1);  //for show
            $table->boolean('short_read_more_manage_status')->default(1); //for manage


            $table->string('view_all')->default('See All');
            $table->string('view_all_page_url')->nullable();
            $table->boolean('view_all_status')->default(1); //for show
            $table->boolean('view_all_manage_status')->default(1); //for manage


            $table->integer('items_per_row')->default(3);
            $table->integer('items_show')->default(4);
            $table->integer('items_manage_status')->default(4);

            
            $table->integer('is_details_page')->default(0);



            $table->string('background')->default(0);
            $table->string('background_color')->default('#eeeeee');
            $table->boolean('background_type')->default(1);


            $table->string('upload_id')->default(0); //Define background image

            $table->string('upload_id1')->default(0);   //Define background title image
            $table->string('upload_id2')->default(0); //Define background title image
            $table->string('upload_id_status')->default(0); //define title image show hide status id status

            $table->string('upload_id3')->default(0); //Define background slider side  image
            $table->string('upload_id3_status')->default(0); //Define background slider side  status

            $table->string('title_status')->default(0);

            $table->string('item_exists')->default(1);


            $table->integer('is_banner')->default(0);
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
