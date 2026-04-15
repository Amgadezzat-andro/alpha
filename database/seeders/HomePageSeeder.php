<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class HomePageSeeder extends Seeder
{
    public function run(): void
    {
        $nowTs = now()->timestamp;
        $userId = DB::table('user')->value('id') ?? 1;

        DB::transaction(function () use ($nowTs, $userId) {
            $categories = [
                'home-page-header-section',
                'home-page-stats-section',
                'home-page-why-we-make-labling-easy-card',
                'home-page-find-right-label',
                'home-page-our-clients',
            ];

            $existingIds = DB::table('bms')
                ->whereIn('category', $categories)
                ->pluck('id');

            if ($existingIds->isNotEmpty()) {
                DB::table('bms_lang')->whereIn('parent_id', $existingIds)->delete();
                DB::table('bms')->whereIn('id', $existingIds)->delete();
            }

            // Header Section
            $this->insertBms(
                category: 'home-page-header-section',
                slug: 'home-page-header',
                title: 'Home Page Header',
                brief: 'Welcome to Raqmix',
                content: 'Your partner in innovative labeling solutions.',
                weightOrder: 1,
                timestamp: $nowTs,
                userId: $userId,
            );

            // Stats Section
            $statsItems = [
                ['number' => '25', 'suffix' => '+', 'label_en' => 'Years of Experience', 'icon' => 'check'],
                ['number' => '500', 'suffix' => '+', 'label_en' => 'Happy Clients', 'icon' => 'users'],
                ['number' => '100', 'suffix' => '%', 'label_en' => 'Satisfaction', 'icon' => 'star'],
            ];

            $this->insertBmsWithJson(
                category: 'home-page-stats-section',
                slug: 'home-page-stats',
                title: 'Home Page Stats',
                jsonItems: $statsItems,
                weightOrder: 2,
                timestamp: $nowTs,
                userId: $userId,
            );

            // Why Labeling Easy Cards
            $whyItems = [
                ['title_en' => 'Premium Quality', 'description_en' => 'We deliver the highest quality labels with precision and care.', 'icon' => 'quality'],
                ['title_en' => 'Fast Delivery', 'description_en' => 'Quick turnaround times without compromising quality.', 'icon' => 'flash'],
                ['title_en' => 'Expert Support', 'description_en' => 'Dedicated team ready to assist you 24/7.', 'icon' => 'support'],
            ];

            foreach ($whyItems as $idx => $item) {
                $this->insertBms(
                    category: 'home-page-why-we-make-labling-easy-card',
                    slug: 'why-card-' . ($idx + 1),
                    title: $item['title_en'],
                    brief: '',
                    content: $item['description_en'],
                    weightOrder: 3 + $idx,
                    timestamp: $nowTs,
                    userId: $userId,
                );
            }

            // Find Right Label Section
            $this->insertBms(
                category: 'home-page-find-right-label',
                slug: 'find-right-label',
                title: 'Find Your Perfect Label Solution',
                brief: 'Use our interactive guide to find the best label type for your needs.',
                content: null,
                weightOrder: 6,
                timestamp: $nowTs,
                userId: $userId,
            );

            // Our Clients Section
            $clientItems = [
                ['icon' => 'logo1', 'label_en' => 'Client 1'],
                ['icon' => 'logo2', 'label_en' => 'Client 2'],
                ['icon' => 'logo3', 'label_en' => 'Client 3'],
            ];

            $this->insertBmsWithJson(
                category: 'home-page-our-clients',
                slug: 'our-clients',
                title: 'Our Clients',
                jsonItems: $clientItems,
                weightOrder: 7,
                timestamp: $nowTs,
                userId: $userId,
            );
        });
    }

    private function insertBms(
        string $category,
        string $slug,
        ?string $title,
        ?string $brief,
        ?string $content,
        int $weightOrder,
        int $timestamp,
        int $userId,
    ): int {
        $bmsId = (int) DB::table('bms')->insertGetId([
            'slug' => $slug,
            'status' => 1,
            'published_at' => $timestamp,
            'created_at' => $timestamp,
            'updated_at' => $timestamp,
            'created_by' => $userId,
            'updated_by' => $userId,
            'category' => $category,
            'weight_order' => $weightOrder,
        ]);

        DB::table('bms_lang')->insert([
            'parent_id' => $bmsId,
            'language' => 'en',
            'title' => $title,
            'second_title' => null,
            'brief' => $brief,
            'image_id' => null,
            'cover_image_id' => null,
            'video_id' => null,
            'image_responsive_id' => null,
            'content' => $content,
            'content2' => null,
            'json_items' => null,
        ]);

        return $bmsId;
    }

    private function insertBmsWithJson(
        string $category,
        string $slug,
        ?string $title,
        array $jsonItems,
        int $weightOrder,
        int $timestamp,
        int $userId,
    ): int {
        $bmsId = (int) DB::table('bms')->insertGetId([
            'slug' => $slug,
            'status' => 1,
            'published_at' => $timestamp,
            'created_at' => $timestamp,
            'updated_at' => $timestamp,
            'created_by' => $userId,
            'updated_by' => $userId,
            'category' => $category,
            'weight_order' => $weightOrder,
        ]);

        DB::table('bms_lang')->insert([
            'parent_id' => $bmsId,
            'language' => 'en',
            'title' => $title,
            'second_title' => null,
            'brief' => null,
            'image_id' => null,
            'cover_image_id' => null,
            'video_id' => null,
            'image_responsive_id' => null,
            'content' => null,
            'content2' => null,
            'json_items' => json_encode($jsonItems),
        ]);

        return $bmsId;
    }
}
