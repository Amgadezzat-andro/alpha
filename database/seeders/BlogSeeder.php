<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;

class BlogSeeder extends Seeder
{
    public function run(): void
    {
        $nowTs = now()->timestamp;
        $userId = DB::table('user')->value('id') ?? 1;

        $posts = [
            [
                'slug' => 'food-beverage-labels',
                'title' => 'Food & Beverage Labels',
                'category' => 'Industries',
                'image' => 'banner1.jpg',
                'brief' => 'Food and beverage packs face moisture, grease, temperature swings, and repeated handling. Labels must stay legible for branding and mandatory information throughout the product lifecycle.',
                'content' => '<p>Food and beverage packs face moisture, grease, temperature swings, and repeated handling. Labels must stay legible for branding and mandatory information throughout the product lifecycle.</p><h2>What we focus on</h2><ul><li>Moisture- and grease-resistant facestocks</li><li>Adhesives suited to refrigerated, frozen, or ambient supply chains</li><li>High-quality print for nutrition and regulatory text</li><li>Formats from semi-gloss paper to PP films and shrink sleeves</li></ul><p>Whether you launch a new SKU or refresh an existing line, we align materials and finishes with your filling process and retail environment.</p>',
                'reading_time' => 4,
            ],
            [
                'slug' => 'cosmetics-personal-care-labels',
                'title' => 'Cosmetics & Personal Care Labels',
                'category' => 'Industries',
                'image' => 'banner.jpg',
                'brief' => 'Beauty and personal care packaging demands premium appearance and resistance to oils, creams, and humid bathrooms. Clear-on-clear and metallic finishes are popular for shelf differentiation.',
                'content' => '<p>Beauty and personal care packaging demands premium appearance and resistance to oils, creams, and humid bathrooms. Clear-on-clear and metallic finishes are popular for shelf differentiation.</p><ul><li>Durable materials with strong resistance to product ingredients</li><li>Premium finishes aligned with brand positioning</li><li>Clear and aluminum options for luxury no-label or metallic looks</li></ul><p>We support intricate designs and tight registration so your labels look as refined as the formula inside.</p>',
                'reading_time' => 4,
            ],
            [
                'slug' => 'detergents-household-product-labels',
                'title' => 'Detergents & Household Products',
                'category' => 'Industries',
                'image' => 'banner1.jpg',
                'brief' => 'Cleaning products often use aggressive formulas and squeezable or rigid plastics. Labels must resist chemical exposure and mechanical stress.',
                'content' => '<p>Cleaning products often use aggressive formulas and squeezable or rigid plastics. Labels must resist chemical exposure and mechanical stress.</p><ul><li>Chemical-resistant films and adhesives</li><li>Strong bond to HDPE, PET, and other common household resins</li><li>Stretch sleeve options for 360 degree branding on bottles</li></ul><p>We test recommendations against your container and use conditions so labels stay put in demanding home and industrial environments.</p>',
                'reading_time' => 3,
            ],
            [
                'slug' => 'pharmaceutical-healthcare-labels',
                'title' => 'Pharmaceutical & Healthcare Labels',
                'category' => 'Industries',
                'image' => 'banner.jpg',
                'brief' => 'Healthcare labeling must balance readability, security, and regulatory compliance. Small text, multi-language copy, and tamper features are common requirements.',
                'content' => '<p>Healthcare labeling must balance readability, security, and regulatory compliance. Small text, multi-language copy, and tamper features are common requirements.</p><ul><li>Crisp print for dosing and safety information</li><li>Secure adhesives for vials, cartons, and devices</li><li>Options for booklet or multi-page labels when content is extensive</li><li>Tamper-evident features where required</li></ul><p>We treat pharma and healthcare projects with strict process control and documentation suitable for validated supply chains.</p>',
                'reading_time' => 4,
            ],
            [
                'slug' => 'logistics-industrial-labels',
                'title' => 'Logistics & Industrial Labels',
                'category' => 'Logistics',
                'image' => 'banner1.jpg',
                'brief' => 'Asset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.',
                'content' => '<p>Asset tracking, warehousing, and harsh environments need labels that survive abrasion, UV, and chemicals while scanning reliably.</p><ul><li>Tear- and scratch-resistant materials</li><li>Barcode and variable data printing for serialization and tracking</li><li>Silver polyester and aluminum options for demanding conditions</li><li>Custom sizes for pallets, racks, and equipment</li></ul><p>Share your durability targets and scan points and we will propose materials and print specs that hold up in the field.</p>',
                'reading_time' => 4,
            ],
            [
                'slug' => 'how-to-choose-right-label-material',
                'title' => 'How to Choose the Right Label Material',
                'category' => 'Materials',
                'image' => 'banner.jpg',
                'brief' => 'Picking the correct facestock and adhesive is one of the most important decisions in packaging.',
                'content' => '<p>Picking the correct facestock and adhesive is one of the most important decisions in packaging. The wrong combination can lead to edge lift, poor print reproduction, or failure in cold or humid conditions.</p><h2>PP White</h2><p>Polypropylene white film is the workhorse for many consumer goods. It offers excellent opacity for vibrant graphics, strong water resistance, and works well on plastics and glass.</p><h2>PP Clear and Clear-on-Clear</h2><p>Clear films let the product show through for a minimalist or premium no-label look. Clear-on-Clear is ideal when both the label and container are transparent and you want a seamless appearance.</p><h2>Aluminum</h2><p>Metalized or aluminum-look labels deliver a technical or luxury feel and stand up to heat and chemicals, common in pharma, industrial, and specialty segments.</p><p>At Alpha Pack, we help you match material to surface, storage conditions, and regulatory requirements so your labels perform from production to shelf.</p>',
                'reading_time' => 4,
            ],
            [
                'slug' => 'sustainable-labeling-solutions',
                'title' => 'Sustainable Labeling Solutions',
                'category' => 'Sustainability',
                'image' => 'banner1.jpg',
                'brief' => 'Brands are under growing pressure to reduce waste and improve recyclability. Labels play a real role in that process.',
                'content' => '<p>Brands are under growing pressure to reduce waste and improve recyclability. Labels play a real role: the right construction can stay compatible with container recycling streams or reduce material use altogether.</p><h2>Stretch sleeves</h2><p>Stretch sleeves apply without adhesive over the full body of a container, which can simplify separation in some recycling processes and support bold 360 degree branding with fewer material layers.</p><h2>Material choices</h2><p>Thinner films, recyclable substrates, and designs that avoid conflicting layers all help lower environmental impact. We work with you to balance sustainability goals with durability and shelf appeal.</p>',
                'reading_time' => 4,
            ],
            [
                'slug' => 'why-tamper-proof-labels-matter',
                'title' => 'Why Tamper-Proof Labels Matter',
                'category' => 'Security',
                'image' => 'banner.jpg',
                'brief' => 'Tamper-evident labels protect consumers and protect your brand. They make unauthorized opening visible at a glance.',
                'content' => '<p>Tamper-evident labels protect consumers and protect your brand. They make unauthorized opening visible at a glance and are widely used in food, supplements, cosmetics, and pharmaceuticals.</p><ul><li>Void messages when removed from the surface</li><li>Break seals and perforations that cannot be realigned cleanly</li><li>Specialized adhesives that fracture or delaminate on tampering</li></ul><p>Choosing the right tamper solution depends on the package shape, distribution environment, and regulatory expectations. We can recommend options that integrate cleanly with your existing artwork and filling lines.</p>',
                'reading_time' => 3,
            ],
            [
                'slug' => 'color-accuracy-label-printing',
                'title' => 'Color Accuracy in Label Printing',
                'category' => 'Prepress',
                'image' => 'banner1.jpg',
                'brief' => 'Consistent color builds recognition. Whether you use CMYK builds or Pantone colors, control through prepress is essential.',
                'content' => '<p>Consistent color builds recognition. Whether you use CMYK process builds or specified Pantone colors, control through prepress and on press is essential.</p><h2>CMYK</h2><p>Four-color process is cost-effective for complex images and gradients. We calibrate presses and profile substrates so tones stay stable across runs.</p><h2>Pantone matching</h2><p>Spot colors are often used for logos and brand-critical hues. We match to specified swatches and validate under agreed lighting conditions where needed.</p><p>Share your brand guidelines early and we will advise on achievable deltas and proofing steps before full production.</p>',
                'reading_time' => 4,
            ],
            [
                'slug' => 'shrink-sleeves-vs-stretch-sleeves',
                'title' => 'Shrink Sleeves vs Stretch Sleeves',
                'category' => 'Products',
                'image' => 'banner.jpg',
                'brief' => 'Both formats deliver 360 degree graphics and strong shelf presence, but they apply very differently.',
                'content' => '<p>Both formats deliver 360 degree graphics and strong shelf presence, but they apply very differently.</p><h2>Shrink sleeves</h2><p>Heat shrinks a pre-printed film to conform tightly to the container. Excellent for unusual shapes and tamper bands over caps. Requires heat tunnels and careful artwork distortion compensation.</p><h2>Stretch sleeves</h2><p>Elastic films stretch over the pack without heat, which can suit temperature-sensitive products and certain line speeds. Great for full-body decoration where adhesive-free application is preferred.</p><p>We help you compare total cost, line integration, and recyclability for your specific bottle and category.</p>',
                'reading_time' => 5,
            ],
            [
                'slug' => 'barcode-labels-best-practices',
                'title' => 'Barcode Labels: Best Practices',
                'category' => 'Logistics',
                'image' => 'banner1.jpg',
                'brief' => 'Reliable scanning depends on print quality, quiet zones, symbol size, and contrast, not only the number sequence.',
                'content' => '<p>Reliable scanning depends on print quality, quiet zones, symbol size, and contrast, not just the correct number sequence.</p><ul><li>Maintain minimum bar width and height for your symbology such as Code 128 or EAN-13</li><li>Use high-contrast ink and substrate combinations</li><li>Avoid placing codes over seams, corners, or areas prone to abrasion</li><li>Test samples on the actual scanners used in retail or warehouses</li></ul><p>We optimize barcode placement in your layout and verify readability against common verification standards where required.</p>',
                'reading_time' => 4,
            ],
        ];

        DB::transaction(function () use ($posts, $nowTs, $userId) {
            // Seed media for blog posts
            $mediaCache = [];
            foreach ($posts as $post) {
                $imageName = $post['image'] ?? 'banner1.jpg';
                if (!isset($mediaCache[$imageName])) {
                    $mediaCache[$imageName] = $this->seedMediaFromFrontendAsset($imageName, 'blog-' . $post['slug'], $userId);
                }
            }

            foreach (array_values($posts) as $index => $post) {
                $categoryId = $this->ensureBlogCategory($post['category'], $nowTs, $userId);

                $publishedAt = now()->subDays((count($posts) - 1) - $index)->timestamp;

                $blogId = DB::table('blog')
                    ->where('slug', $post['slug'])
                    ->value('id');

                $blogPayload = [
                    'category_id' => $categoryId,
                    'author' => 'Alpha Pack',
                    'slug' => $post['slug'],
                    'image_header' => null,
                    'image_campaign' => null,
                    'status' => 1,
                    'comment_status' => 1,
                    'is_campaign' => 0,
                    'start_date' => null,
                    'end_date' => null,
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
                    'reading_time' => $post['reading_time'],
                    'video_id' => null,
                    'gallery_image_ids' => null,
                ];

                if ($blogId) {
                    DB::table('blog')
                        ->where('id', $blogId)
                        ->update($blogPayload);
                } else {
                    $blogId = DB::table('blog')->insertGetId(array_merge($blogPayload, [
                        'created_at' => $nowTs,
                        'created_by' => $userId,
                    ]));
                }

                $translationExists = DB::table('blog_lang')
                    ->where('blog_id', $blogId)
                    ->where('language', 'en')
                    ->exists();

                $imageName = $post['image'] ?? 'banner1.jpg';
                $translationPayload = [
                    'title' => $post['title'],
                    'image_id' => $mediaCache[$imageName] ?? null,
                    'brief' => $post['brief'],
                    'content' => $post['content'],
                    'pdf_file' => null,
                ];

                if ($translationExists) {
                    DB::table('blog_lang')
                        ->where('blog_id', $blogId)
                        ->where('language', 'en')
                        ->update($translationPayload);
                } else {
                    DB::table('blog_lang')->insert(array_merge($translationPayload, [
                        'blog_id' => $blogId,
                        'language' => 'en',
                    ]));
                }
            }
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

    private function ensureBlogCategory(string $title, int $timestamp, int $userId): int
    {
        $slug = Str::slug($title);

        $dropdownId = DB::table('dropdown_list')
            ->where('slug', $slug)
            ->where('category', 'Blog Category')
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
                'category' => 'Blog Category',
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
}
