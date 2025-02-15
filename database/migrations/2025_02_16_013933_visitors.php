<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
{
    Schema::create('visitors', function (Blueprint $table) {
        $table->id();
        $table->string('ip_address');
        $table->string('user_agent');
        $table->string('browser');  // Add the browser column
        $table->date('visit_date');
        $table->timestamps();

        // Ensure uniqueness based on IP and date
        $table->unique(['ip_address', 'visit_date']);
    });
}


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        //
    }
};
