<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDevicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('devices', function (Blueprint $table) {
            $table->id();
            $table->string('device_type')->index();
            $table->string('ip',40)->index();
            $table->boolean('logout')->default(0);
            $table->timestamp('suspend_date')->nullable();
            $table->json('data',60)->nullable();
            $table->bigInteger('creator')->nullable();
            $table->bigInteger('updater_id')->nullable();
            $table->softDeletes();
            $table->text('notification_data')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('devices');
    }
}
