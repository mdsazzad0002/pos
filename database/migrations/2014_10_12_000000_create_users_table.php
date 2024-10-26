<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('prefix')->nullable();
            $table->string('name');
            $table->string('username')->nullable();
            $table->string('designation')->nullable();

            $table->string('nid')->nullable();
            $table->float('experience')->default(0);
            $table->string('salary')->nullable();
            $table->string('branch_id')->nullable();
            $table->date('joining_date')->nullable();
            $table->string('upload_id')->default(0);
            $table->string('status')->default(0);
            $table->string('sales_status')->default(0);
            $table->string('birth')->nullable();
            $table->string('blood_group')->nullable();
            $table->string('mobile_number')->nullable();
            $table->string('alt_mobile_number')->nullable();
            $table->string('family_mobile_number')->nullable();
            $table->string('present_address')->nullable();
            $table->string('p_present_address')->nullable();

            $table->string('facebook')->nullable();
            $table->string('twitter')->nullable();
            $table->string('youtube')->nullable();
            $table->string('instagram')->nullable();
            $table->string('linkedin')->nullable();
            $table->string('github')->nullable();
            $table->string('pintarest')->nullable();
            $table->string('telegram')->nullable();
            $table->string('whatsapp')->nullable();

            $table->string('account_holder_name')->nullable();
            $table->string('account_no')->nullable();
            $table->string('account_provider')->nullable();
            $table->string('account_identifier_code')->nullable();
            $table->string('account_branch')->nullable();
            $table->string('account_tax_payer_id')->nullable();
            $table->string('gender')->default(0);
            $table->string('marital_status')->default(0);
            $table->string('sales_commission_present')->default(0);
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');

            // for push notification
            $table->string('fcm_token')->nullable();

            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('users');
    }
};
