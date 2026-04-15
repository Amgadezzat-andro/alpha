<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class BlogBannerSeeder extends Seeder
{
    public function run(): void
    {
        $nowTs = now()->timestamp;
        $userId = DB::table('user')->value('id') ?? 1;

        DB::transaction(function () use ($nowTs, $userId) {
            $category = 'blog-index-banner';

            // Delete existing blog-index-banner if exists
            $existingIds = DB::table('bms')
                ->where('category', $category)
                ->pluck('id');

            if ($existingIds->isNotEmpty()) {
                DB::table('bms_lang')->whereIn('parent_id', $existingIds)->delete();
                DB::table('bms')->whereIn('id', $existingIds)->delete();
            }

            // Seed banner image
            $bannerImageId = $this->seedMediaFromFrontendAsset('banner.jpg', 'blog-index-banner', $userId);

            // Insert BMS entry for blog index banner
            $this->insertBms(
                category: $category,
                slug: 'blog-index-banner',
                title: 'Insights & Innovation',
                brief: 'Discover industry best practices, labeling solutions, and product expertise from the Alpha Pack team. Stay updated with our latest insights on packaging, sustainability, and quality.',
                content: null,
                imageId: $bannerImageId,
                weightOrder: 10,
                timestamp: $nowTs,
                userId: $userId,
            );
        });

        Artisan::call('cache:clear');
    }

    private function seedMediaFromFrontendAsset(string $filename, string $namePrefix, int $userId): ?int
    {
        $sourcePath = public_path('frontend-static/Assets/' . $filename);

        if (!File::exists($sourcePath)) {
            return null;
        }

        $targetRelativeDir = 'media/blog';
        $targetRelativePath = $targetRelativeDir . '/' . $filename;
        $targetStoragePath = storage_path('app/public/' . $targetRelativePath);

        File::ensureDirectoryExists(dirname($targetStoragePath));

        if (!File::exists($targetStoragePath)) {
            File::copy($sourcePath, $targetStoragePath);
        }

        $existingId = DB::table('media')->where('path', $targetRelativePath)->value('id');

        if ($existingId) {
            return (int) $existingId;
        }

        $ext = strtolower(pathinfo($filename, PATHINFO_EXTENSION));
        $mime = $ext === 'png' ? 'image/png' : 'image/jpeg';
        $size = File::size($targetStoragePath) ?: null;

        return (int) DB::table('media')->insertGetId([
            'disk' => 'public',
            'directory' => $targetRelativeDir,
            'visibility' => 'public',
            'name' => $namePrefix,
            'path' => $targetRelativePath,
            'width' => null,
            'height' => null,
            'size' => $size,
            'type' => $mime,
            'ext' => $ext,
            'alt' => null,
            'title' => null,
            'description' => null,
            'caption' => null,
            'exif' => null,
            'curations' => null,
            'created_at' => now(),
            'created_by' => $userId,
            'updated_at' => now(),
            'updated_by' => $userId,
        ]);
    }

    private function insertBms(
        string $category,
        string $slug,
        ?string $title,
        ?string $brief,
        ?string $content,
        ?int $imageId,
        int $weightOrder,
        int $timestamp,
        int $userId,
        ?string $secondTitle = null
    ): int {
        $bmsId = (int) DB::table('bms')->insertGetId([
            'slug' => $slug,
            'status' => 1,
            'module_class' => null,
            'module_id' => null,
            'url' => '1',
            'published_at' => $timestamp,
            'created_at' => $timestamp,
            'updated_at' => $timestamp,
            'deleted_at' => null,
            'created_by' => $userId,
            'updated_by' => $userId,
            'revision' => 1,
            'changed' => 0,
            'reject_note' => null,
            'view' => 'page',
            'layout' => 'main',
            'category' => $category,
            'color' => null,
            'promoted_to_front' => 0,
            'site_id' => null,
            'rate' => null,
            'weight_order' => $weightOrder,
            'category_slug' => null,
        ]);

        DB::table('bms_lang')->insert([
            'parent_id' => $bmsId,
            'language' => 'en',
            'title' => $title,
            'second_title' => $secondTitle,
            'brief' => $brief,
            'image_id' => $imageId,
            'cover_image_id' => null,
            'video_id' => null,
            'image_responsive_id' => null,
            'content' => $content,
            'content2' => null,
        ]);

        return $bmsId;
    }
}
