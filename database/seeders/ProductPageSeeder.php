<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ProductPageSeeder extends Seeder
{
    public function run(): void
    {
        $nowTs = now()->timestamp;
        $userId = DB::table('user')->value('id') ?? 1;

        DB::transaction(function () use ($nowTs, $userId) {
            $heroImageId = $this->seedMediaFromFrontendAsset('banner.jpg', 'products-hero', $userId);
            $whyChooseImageId = $this->seedMediaFromFrontendAsset('banner.jpg', 'products-why-choose', $userId);

            $this->seedBmsBlock(
                'products-index-banner',
                'products-index-banner',
                'Our Product Range',
                'Premium quality labels and packaging solutions designed for your diverse business needs',
                'Explore Our Solutions',
                'From self-adhesive labels to innovative shrink sleeves and in-mold labels, we deliver reliable, high-quality solutions for every application. Each product is designed with precision and quality at every step.',
                $heroImageId,
                10,
                $nowTs,
                $userId,
            );

            $this->seedBmsBlock(
                'products-why-choose-us',
                'products-why-choose-us',
                'Why Choose Our Labels?',
                'With over 20 years of experience in the labeling industry, Alpha Pack has established itself as a trusted partner for businesses worldwide. We combine cutting-edge printing technology with superior materials to create labels that not only look exceptional but also perform reliably in demanding environments.',
                null,
                '<p>Our team of experts works closely with each client to understand their unique needs and deliver customized solutions that exceed expectations. From concept to production, we maintain the highest standards of quality and professionalism.</p><ul style="list-style: none; padding: 0; margin-top: 20px;"><li style="padding: 10px 0;"><i class="fas fa-check-circle" style="color: var(--primary); margin-right: 12px;"></i> Premium quality materials</li><li style="padding: 10px 0;"><i class="fas fa-check-circle" style="color: var(--primary); margin-right: 12px;"></i> Advanced printing technology</li><li style="padding: 10px 0;"><i class="fas fa-check-circle" style="color: var(--primary); margin-right: 12px;"></i> Fast turnaround times</li><li style="padding: 10px 0;"><i class="fas fa-check-circle" style="color: var(--primary); margin-right: 12px;"></i> Competitive pricing</li></ul>',
                $whyChooseImageId,
                20,
                $nowTs,
                $userId,
            );

            $this->seedBmsBlock(
                'products-our-process',
                'products-our-process',
                'Our Process',
                'At Alpha Pack, we follow a streamlined process to ensure every project is handled with precision and care. From initial consultation to final delivery, we maintain clear communication and attention to detail at every stage.',
                null,
                '<p>Our process includes design consultation, material selection, quality proofing, production, and quality assurance. We work with you every step of the way to ensure the final product meets or exceeds your expectations.</p><div style="margin-top: 30px; display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px;"><div style="background: var(--off-white); padding: 20px; border-radius: 8px;"><h4 style="color: var(--primary); margin-top: 0;">Fast Production</h4><p style="font-size: 0.9rem; margin: 0;">5-7 business days standard</p></div><div style="background: var(--off-white); padding: 20px; border-radius: 8px;"><h4 style="color: var(--primary); margin-top: 0;">Quality Guarantee</h4><p style="font-size: 0.9rem; margin: 0;">100% satisfaction guaranteed</p></div></div>',
                null,
                30,
                $nowTs,
                $userId,
            );
        });

        Artisan::call('cache:clear');
    }

    private function seedBmsBlock(string $category, string $slug, ?string $title, ?string $brief, ?string $secondTitle, ?string $content, ?int $imageId, int $weightOrder, int $timestamp, int $userId): void
    {
        $existingIds = DB::table('bms')->where('category', $category)->pluck('id');

        if ($existingIds->isNotEmpty()) {
            DB::table('bms_lang')->whereIn('parent_id', $existingIds)->delete();
            DB::table('bms')->whereIn('id', $existingIds)->delete();
        }

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
    }

    private function seedMediaFromFrontendAsset(string $filename, string $namePrefix, int $userId): ?int
    {
        $sourcePath = public_path('frontend-static/Assets/' . $filename);

        if (!File::exists($sourcePath)) {
            return null;
        }

        $targetRelativeDir = 'media/products';
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
}
