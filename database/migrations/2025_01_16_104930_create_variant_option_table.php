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
            $table->string('upload_id1')->default(0);
            $table->string('upload_id2')->default(0);
            $table->string('upload_id_status')->default(0);
            $table->string('item_exists')->default(1);

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('varinat_suggessions', function (Blueprint $table) {
            $table->dropColumn('upload_id');
            $table->dropColumn('upload_id1');
            $table->dropColumn('upload_id2');
            $table->dropColumn('upload_id_status');
            $table->dropColumn('item_exists');
        });
    }
};
