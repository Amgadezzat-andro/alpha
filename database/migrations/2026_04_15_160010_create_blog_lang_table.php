<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('blog_lang', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('blog_id');
            $table->string('language', 6);
            $table->text('title')->nullable();
            $table->unsignedBigInteger('image_id')->nullable();
            $table->text('brief')->nullable();
            $table->text('content')->nullable();
            $table->string('pdf_file')->nullable();

            $table->unique(['blog_id', 'language']);
            $table->index('language');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('blog_lang');
    }
};
