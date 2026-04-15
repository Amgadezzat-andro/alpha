<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('product_lang', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('product_id');
            $table->string('language', 6);
            $table->text('title')->nullable();
            $table->text('hero_title')->nullable();
            $table->text('brief')->nullable();
            $table->unsignedBigInteger('image_id')->nullable();
            $table->json('gallery_items')->nullable();
            $table->json('description_sections')->nullable();
            $table->json('client_logos')->nullable();

            $table->unique(['product_id', 'language']);
            $table->index('language');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('product_lang');
    }
};
