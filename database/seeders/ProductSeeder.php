<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class ProductSeeder extends Seeder
{
    public function run(): void
    {
        $nowTs = now()->timestamp;
        $userId = DB::table('user')->value('id') ?? 1;

        $sharedDescriptionSections = [
            [
                'type' => 'split',
                'image_position' => 'right',
                'heading' => 'Features and Uses',
                'content' => "We have more than 30 years of experience in the printing industry, which allows us to offer you a comprehensive range of personalized labels and sleeves.\n\nWe continue to develop creative solutions that can cover different market needs across packaging and labeling applications.",
                'image_url' => 'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=600&q=80',
            ],
            [
                'type' => 'split',
                'image_position' => 'left',
                'heading' => 'Production Flexibility',
                'content' => "Our portfolio is built for versatility. Whether your packaging is glass, foil, plastic, metal, or wood, we can tailor a product that suits the application.\n\nWe combine material choice, adhesive performance, and print quality to deliver a reliable final result.",
                'image_url' => 'https://images.unsplash.com/photo-1552664730-d307ca884978?w=600&q=80',
            ],
            [
                'type' => 'full',
                'heading' => 'Adhesives, Materials and Printing Technologies',
                'content' => "Choosing the best label or sleeve for your product is not always easy. There are many factors to consider, and Alpha Pack specialists provide the support needed to make the right decision.\n\nVariety is a key part of the solution, which is why we maintain a broad range of materials, finishes, and production options.",
            ],
            [
                'type' => 'grid',
                'heading' => 'Multiple Solutions for Your Needs',
                'content' => 'We offer a variety of materials, adhesives, and printing technologies to meet every requirement. Our range is designed to help you find the right fit for product packaging, logistics, retail presentation, and industrial use.',
            ],
        ];

        $sharedClientLogos = [
            ['icon' => 'fas fa-building', 'label' => 'Food Corp'],
            ['icon' => 'fas fa-flask', 'label' => 'PharmaCo'],
            ['icon' => 'fas fa-spa', 'label' => 'BeautyLine'],
            ['icon' => 'fas fa-wine-glass-alt', 'label' => 'BevGroup'],
            ['icon' => 'fas fa-industry', 'label' => 'IndusTech'],
            ['icon' => 'fas fa-leaf', 'label' => 'NatureCare'],
            ['icon' => 'fas fa-pump-soap', 'label' => 'CleanPro'],
            ['icon' => 'fas fa-box', 'label' => 'PackRight'],
        ];

        $products = [
            [
                'title' => 'Self-Adhesive Labels',
                'hero_title' => 'Premium Self-Adhesive Labels',
                'category' => 'Self-Adhesive Labels',
                'sku' => 'APL-SAL-001',
                'slug' => 'self-adhesive-labels',
                'brief' => 'Custom labels available in glossy, matte, clear, metallic, and aluminum finishes',
                'main_image' => '167101094915040.jpg',
                'gallery' => [
                    '167101094915040.jpg',
                    '16710109704212.jpg',
                    '167101099231395.jpg',
                    '167101104424263.jpg',
                    '16710110633883.jpg',
                    '167101108126559.jpg',
                ],
                'grid_images' => [
                    '167101094915040.jpg',
                    '16710109704212.jpg',
                    '167101104424263.jpg',
                ],
            ],
            [
                'title' => 'Barcode Labels',
                'hero_title' => 'Reliable Barcode Labels',
                'category' => 'Barcode Labels',
                'sku' => 'APL-BCL-002',
                'slug' => 'barcode-labels',
                'brief' => 'High-accuracy barcode labels designed for logistics, retail, and industrial traceability',
                'main_image' => '16710109704212.jpg',
                'gallery' => [
                    '16710109704212.jpg',
                    '167101094915040.jpg',
                    '167101110424792.jpg',
                ],
                'grid_images' => [
                    '16710109704212.jpg',
                    '167101110424792.jpg',
                    '167101114921698.jpg',
                ],
            ],
            [
                'title' => 'Tamper Proof Labels',
                'hero_title' => 'Secure Tamper Proof Labels',
                'category' => 'Tamper Proof Labels',
                'sku' => 'APL-TPL-003',
                'slug' => 'tamper-proof-labels',
                'brief' => 'Tamper-evident label solutions that protect your brand and show interference instantly',
                'main_image' => '167101099231395.jpg',
                'gallery' => [
                    '167101099231395.jpg',
                    '16710109704212.jpg',
                    '167101104424263.jpg',
                ],
                'grid_images' => [
                    '167101099231395.jpg',
                    '167101094915040.jpg',
                    '167101187438782.jpg',
                ],
            ],
            [
                'title' => 'Shrink Sleeves',
                'hero_title' => 'Custom Shrink Sleeves',
                'category' => 'Shrink Sleeves',
                'sku' => 'APL-SSL-004',
                'slug' => 'shrink-sleeves',
                'brief' => '360 degree shrink sleeve branding for complex containers and standout shelf impact',
                'main_image' => '167101104424263.jpg',
                'gallery' => [
                    '167101104424263.jpg',
                    '16710110633883.jpg',
                    '167101108126559.jpg',
                ],
                'grid_images' => [
                    '167101104424263.jpg',
                    '16710110633883.jpg',
                    '167101108126559.jpg',
                ],
            ],
            [
                'title' => 'Stretch Sleeves',
                'hero_title' => 'Flexible Stretch Sleeves',
                'category' => 'Stretch Sleeves',
                'sku' => 'APL-STL-005',
                'slug' => 'stretch-sleeves',
                'brief' => 'Adhesive-free stretch sleeve solutions for efficient full-body decoration and branding',
                'main_image' => '16710110633883.jpg',
                'gallery' => [
                    '16710110633883.jpg',
                    '167101104424263.jpg',
                    '167101108126559.jpg',
                ],
                'grid_images' => [
                    '16710110633883.jpg',
                    '167101104424263.jpg',
                    '167101110424792.jpg',
                ],
            ],
            [
                'title' => 'In-Mold Labels',
                'hero_title' => 'Durable In-Mold Labels',
                'category' => 'In-Mold Labels',
                'sku' => 'APL-IML-006',
                'slug' => 'in-mold-labels',
                'brief' => 'Integrated label decoration for molded packaging with lasting performance and visual impact',
                'main_image' => '167101108126559.jpg',
                'gallery' => [
                    '167101108126559.jpg',
                    '167101104424263.jpg',
                    '167101114921698.jpg',
                ],
                'grid_images' => [
                    '167101108126559.jpg',
                    '167101114921698.jpg',
                    '167101110424792.jpg',
                ],
            ],
        ];

        DB::transaction(function () use ($products, $sharedDescriptionSections, $sharedClientLogos, $nowTs, $userId) {
            $mediaCache = [];

            foreach ($products as $product) {
                $filenames = array_merge([$product['main_image']], $product['gallery'], $product['grid_images'], ['banner1.jpg']);
                foreach (array_unique($filenames) as $filename) {
                    $mediaCache[$filename] = $mediaCache[$filename] ?? $this->seedProductMedia($filename, $userId);
                }
            }

            foreach (array_values($products) as $index => $product) {
                $categoryId = $this->ensureProductCategory($product['category'], $nowTs, $userId);
                $publishedAt = now()->subDays((count($products) - 1) - $index)->timestamp;

                $productId = DB::table('product')->where('slug', $product['slug'])->value('id');

                $productPayload = [
                    'category_id' => $categoryId,
                    'sku' => $product['sku'],
                    'slug' => $product['slug'],
                    'status' => 1,
                    'is_campaign' => 0,
                    'published_at' => $publishedAt,
                    'updated_at' => $nowTs,
                    'deleted_at' => null,
                    'updated_by' => $userId,
                    'revision' => 1,
                    'changed' => 0,
                    'reject_note' => null,
                    'view' => 'page',
                    'layout' => 'main',
                    'weight_order' => ($index + 1) * 10,
                    'views' => 0,
                ];

                if ($productId) {
                    DB::table('product')->where('id', $productId)->update($productPayload);
                } else {
                    $productId = DB::table('product')->insertGetId(array_merge($productPayload, [
                        'created_at' => $nowTs,
                        'created_by' => $userId,
                    ]));
                }

                $descriptionSections = collect($sharedDescriptionSections)->map(function ($section) use ($product, $mediaCache) {
                    if ($section['type'] === 'full') {
                        $section['image_id'] = $mediaCache['banner1.jpg'] ?? null;
                    }

                    if ($section['type'] === 'grid') {
                        $section['image_1_id'] = $mediaCache[$product['grid_images'][0]] ?? null;
                        $section['image_2_id'] = $mediaCache[$product['grid_images'][1]] ?? null;
                        $section['image_3_id'] = $mediaCache[$product['grid_images'][2]] ?? null;
                    }

                    if ($section['type'] === 'split') {
                        $section['heading'] = str_replace(['Features and Uses', 'Production Flexibility'], [$product['title'] . ': Features and Uses', $product['title'] . ' in Production'], $section['heading']);
                    }

                    return $section;
                })->values()->all();

                $galleryItems = collect($product['gallery'])->map(function ($filename) use ($mediaCache, $product) {
                    return [
                        'image_id' => $mediaCache[$filename] ?? null,
                        'alt' => $product['title'],
                    ];
                })->all();

                $translationPayload = [
                    'title' => $product['title'],
                    'hero_title' => $product['hero_title'],
                    'brief' => $product['brief'],
                    'image_id' => $mediaCache[$product['main_image']] ?? null,
                    'gallery_items' => json_encode($galleryItems),
                    'description_sections' => json_encode($descriptionSections),
                    'client_logos' => json_encode($sharedClientLogos),
                ];

                $translationExists = DB::table('product_lang')
                    ->where('product_id', $productId)
                    ->where('language', 'en')
                    ->exists();

                if ($translationExists) {
                    DB::table('product_lang')
                        ->where('product_id', $productId)
                        ->where('language', 'en')
                        ->update($translationPayload);
                } else {
                    DB::table('product_lang')->insert(array_merge($translationPayload, [
                        'product_id' => $productId,
                        'language' => 'en',
                    ]));
                }
            }
        });

        Artisan::call('cache:clear');
    }

    private function ensureProductCategory(string $title, int $timestamp, int $userId): int
    {
        $slug = Str::slug($title);

        $dropdownId = DB::table('dropdown_list')
            ->where('slug', $slug)
            ->where('category', 'Product Category')
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
                'category' => 'Product Category',
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

        return (int) $dropdownId;
    }

    private function seedProductMedia(string $filename, int $userId): ?int
    {
        $sourcePath = public_path('frontend-static/Assets/product/' . $filename);
        if (!File::exists($sourcePath)) {
            $sourcePath = public_path('frontend-static/Assets/' . $filename);
        }

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
            'name' => pathinfo($filename, PATHINFO_FILENAME),
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
