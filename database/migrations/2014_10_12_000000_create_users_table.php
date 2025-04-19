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
            $table->string('father')->nullable();
            $table->string('mother')->nullable();
            $table->string('username')->nullable();
            $table->string('designation')->nullable();
            $table->string('religion')->nullable();
            $table->string('slug')->nullable();



            $table->string('nationality')->nullable();
            $table->string('nid')->nullable();
            $table->string('salary')->default(0);
            $table->string('branch_id')->default(0);

            $table->date('joining_date')->nullable();
            $table->date('exit_date')->nullable();

            $table->string('upload_id')->default(0);
            $table->string('status')->default(0);

            $table->string('sales_status')->default(0);


            $table->string('birth')->nullable();
            $table->string('blood_group')->nullable();
            $table->string('mobile_number')->nullable();
            $table->string('alt_mobile_number')->nullable();
            $table->string('family_mobile_number')->nullable();



            $table->string('account_tax_payer_id')->nullable();
            $table->string('gender')->default(0);
            $table->string('marital_status')->default(0);
            $table->string('sales_commission_present')->default(0);
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');

            $table->string('api_token')->nullable();

            

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
