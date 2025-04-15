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
        Schema::create('wa_messages', function (Blueprint $table) {
            $table->id();
            $table->foreignId('wa_contact_id')->constrained()->onDelete('cascade'); // FK to wa_contacts
            $table->string('message_id')->unique(); // wamid...
            $table->text('body')->nullable(); // Message content
            $table->string('type')->nullable(); // text, image, etc.
            $table->string('status')->nullable(); // text, image, etc.
            $table->timestamp('received_at'); // Converted from timestamp
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('wa_messages');
    }
};
