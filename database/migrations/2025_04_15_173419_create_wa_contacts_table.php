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
        Schema::create('wa_contacts', function (Blueprint $table) {
          
                $table->id();
                $table->string('wa_id')->unique(); // WhatsApp ID, e.g. 8801590084779
                $table->string('name')->nullable(); // User's profile name
                $table->timestamps();
         
            
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('wa_contacts');
    }
};
