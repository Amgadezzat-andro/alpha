<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('blog', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('category_id')->nullable();
            $table->string('author')->default('Alpha Pack');
            $table->string('slug');
            $table->string('image_header')->nullable();
            $table->string('image_campaign')->nullable();
            $table->integer('status')->default(0);
            $table->integer('comment_status')->default(1);
            $table->boolean('is_campaign')->nullable();
            $table->timestamp('start_date')->nullable();
            $table->timestamp('end_date')->nullable();
            $table->integer('published_at')->nullable();
            $table->integer('created_at')->nullable();
            $table->integer('updated_at')->nullable();
            $table->integer('deleted_at')->nullable();
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
            $table->integer('revision')->default(1);
            $table->tinyInteger('changed')->default(0);
            $table->text('reject_note')->nullable();
            $table->string('view')->default('page');
            $table->string('layout')->default('main');
            $table->tinyInteger('weight_order')->default(10);
            $table->unsignedInteger('views')->default(0);
            $table->unsignedInteger('reading_time')->default(0);
            $table->unsignedBigInteger('video_id')->nullable();
            $table->json('gallery_image_ids')->nullable();

            $table->index('slug');
            $table->index('status');
            $table->index('published_at');
            $table->index('deleted_at');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('blog');
    }
};
