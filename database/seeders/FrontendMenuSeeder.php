<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class FrontendMenuSeeder extends Seeder
{
    public function run(): void
    {
        $timestamp = now()->timestamp;
        $userId = DB::table('user')->value('id');

        DB::transaction(function () use ($timestamp, $userId) {
            $this->ensureMenuCategorySlug('main-menu', 'Main Menu', $timestamp, $userId);
            $this->ensureMenuCategorySlug('footer-menu', 'Footer Menu', $timestamp, $userId);

            $mainMenuId = $this->recreateMenu('main-menu', 'Main Menu', $timestamp, $userId);
            $footerMenuId = $this->recreateMenu('footer-menu', 'Footer Menu', $timestamp, $userId);

            $headerItems = [
                [
                    'title' => 'Home',
                    'link' => '/',
                ],
                [
                    'title' => 'Products',
                    'link' => '/products',
                    'children' => [
                        ['title' => 'Self-Adhesive Labels', 'link' => '/product-details#self-adhesive'],
                        ['title' => 'Barcode Labels', 'link' => '/product-details#barcode'],
                        ['title' => 'Tamper Proof Labels', 'link' => '/product-details#tamper-proof'],
                        ['title' => 'Shrink Sleeves', 'link' => '/product-details#shrink-sleeves'],
                        ['title' => 'Stretch Sleeves', 'link' => '/product-details#stretch-sleeves'],
                        ['title' => 'In-Mold Labels', 'link' => '/product-details#in-mold'],
                    ],
                ],
                [
                    'title' => 'Blog',
                    'link' => '/blog',
                ],
                [
                    'title' => 'About Us',
                    'link' => '/about',
                ],
                [
                    'title' => 'Contact',
                    'link' => '/contact',
                ],
                [
                    'title' => 'Download Catalogue',
                    'link' => '#catalogue',
                    'custom_color_class' => 'nav-cta',
                ],
            ];

            $footerItems = [
                [
                    'title' => 'Products',
                    'link' => '/products',
                    'children' => [
                        ['title' => 'Self-Adhesive Labels', 'link' => '/product-details#self-adhesive'],
                        ['title' => 'Barcode Labels', 'link' => '/product-details#barcode'],
                        ['title' => 'Tamper Proof Labels', 'link' => '/product-details#tamper-proof'],
                        ['title' => 'Shrink Sleeves', 'link' => '/product-details#shrink-sleeves'],
                        ['title' => 'Stretch Sleeves', 'link' => '/product-details#stretch-sleeves'],
                        ['title' => 'In-Mold Labels', 'link' => '/product-details#in-mold'],
                    ],
                ],
                [
                    'title' => 'Company',
                    'link' => '/about',
                    'children' => [
                        ['title' => 'About Us', 'link' => '/about'],
                        ['title' => 'Our History', 'link' => '/about#history'],
                        ['title' => 'Testimonials', 'link' => '/about#testimonials'],
                        ['title' => 'Blog', 'link' => '/blog'],
                        ['title' => 'Terms & Conditions', 'link' => '/about#terms'],
                    ],
                ],
            ];

            $this->seedMenuLinks($mainMenuId, $headerItems, $timestamp, $userId);
            $this->seedMenuLinks($footerMenuId, $footerItems, $timestamp, $userId);
        });

        Artisan::call('cache:clear');
    }

    private function ensureMenuCategorySlug(string $slug, string $title, int $timestamp, ?int $userId): void
    {
        $dropdownId = DB::table('dropdown_list')
            ->where('slug', $slug)
            ->value('id');

        if (!$dropdownId) {
            $dropdownId = DB::table('dropdown_list')->insertGetId([
                'slug' => $slug,
                'icon' => null,
                'status' => 1,
                'color' => null,
                'published_at' => $timestamp,
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
                'deleted_at' => null,
                'revision' => 1,
                'created_by' => $userId,
                'updated_by' => $userId,
                'category' => 'Menu Category',
                'count' => 0,
                'promoted_to_front' => 0,
                'code' => null,
                'weight_order' => 10,
                'changed' => 0,
                'reject_note' => null,
            ]);
        }

        $translationExists = DB::table('dropdown_list_lang')
            ->where('parent_id', $dropdownId)
            ->where('language', 'en')
            ->exists();

        if (!$translationExists) {
            DB::table('dropdown_list_lang')->insert([
                'parent_id' => $dropdownId,
                'language' => 'en',
                'title' => $title,
                'second_title' => null,
                'image' => null,
                'video_link' => null,
                'content' => null,
            ]);
        }
    }

    private function recreateMenu(string $categorySlug, string $title, int $timestamp, ?int $userId): int
    {
        $existingMenuIds = DB::table('menu')
            ->where('category_slug', $categorySlug)
            ->pluck('id');

        if ($existingMenuIds->isNotEmpty()) {
            $menuLinkIds = DB::table('menu_link')
                ->whereIn('menu_id', $existingMenuIds)
                ->pluck('id');

            if ($menuLinkIds->isNotEmpty()) {
                DB::table('menu_link_lang')->whereIn('parent_id', $menuLinkIds)->delete();
                DB::table('menu_link')->whereIn('id', $menuLinkIds)->delete();
            }

            DB::table('menu_lang')->whereIn('parent_id', $existingMenuIds)->delete();
            DB::table('menu')->whereIn('id', $existingMenuIds)->delete();
        }

        $menuId = DB::table('menu')->insertGetId([
            'category_slug' => $categorySlug,
            'created_at' => $timestamp,
            'updated_at' => $timestamp,
            'deleted_at' => null,
            'published_at' => $timestamp,
            'revision' => 1,
            'changed' => 0,
            'reject_note' => null,
            'created_by' => $userId,
            'updated_by' => $userId,
            'weight_order' => 10,
            'status' => 1,
        ]);

        DB::table('menu_lang')->insert([
            'parent_id' => $menuId,
            'language' => 'en',
            'title' => $title,
        ]);

        return $menuId;
    }

    private function seedMenuLinks(int $menuId, array $items, int $timestamp, ?int $userId, int $parentId = -1): void
    {
        foreach (array_values($items) as $index => $item) {
            $order = $index + 1;

            $menuLinkId = DB::table('menu_link')->insertGetId([
                'menu_id' => $menuId,
                'self_parent_id' => $parentId,
                'image' => null,
                'custom_color_class' => $item['custom_color_class'] ?? '',
                'admin_icon' => null,
                'alwaysVisible' => 0,
                'order' => $order,
                'additional_attributes' => null,
                'created_at' => $timestamp,
                'updated_at' => $timestamp,
                'deleted_at' => null,
                'published_at' => $timestamp,
                'revision' => 1,
                'changed' => 0,
                'reject_note' => null,
                'created_by' => $userId,
                'updated_by' => $userId,
                'weight_order' => $order,
                'status' => 1,
            ]);

            DB::table('menu_link_lang')->insert([
                'parent_id' => $menuLinkId,
                'language' => 'en',
                'title' => $item['title'],
                'link' => $item['link'],
                'link_2' => null,
                'brief' => null,
            ]);

            if (!empty($item['children'])) {
                $this->seedMenuLinks($menuId, $item['children'], $timestamp, $userId, $menuLinkId);
            }
        }
    }
}
