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
        Schema::table('varinat_suggessions', function (Blueprint $table) {
            $table->string('upload_id')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('varinat_suggessions', function (Blueprint $table) {
            $table->dropColumn('upload_id');
        });
    }
};