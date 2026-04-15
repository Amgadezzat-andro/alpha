<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('ask_quote_webform', function (Blueprint $table) {
            $table->increments('id');
            $table->string('first_name');
            $table->string('last_name');
            $table->string('email');
            $table->string('company');
            $table->string('country');
            $table->string('phone');
            $table->string('product');
            $table->unsignedBigInteger('quantity');
            $table->string('file_upload')->nullable();
            $table->text('message')->nullable();
            $table->integer('created_at')->nullable();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('ask_quote_webform');
    }
};
