<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class AboutUsBmsSeeder extends Seeder
{
    public function run(): void
    {
        $nowTs = now()->timestamp;
        $userId = DB::table('user')->value('id') ?? 1;

        DB::transaction(function () use ($nowTs, $userId) {
            $categories = [
                'about-us-header-section',
                'about-us-who-we-are',
                'about-us-our-history-cards',
                'about-us-testimonials',
                'about-us-terms-conditions',
            ];

            $existingIds = DB::table('bms')
                ->whereIn('category', $categories)
                ->pluck('id');

            if ($existingIds->isNotEmpty()) {
                DB::table('bms_lang')->whereIn('parent_id', $existingIds)->delete();
                DB::table('bms')->whereIn('id', $existingIds)->delete();
            }

            $headerMediaId = $this->seedMediaFromFrontendAsset('banner1.jpg', 'about-us-header', $userId);
            $whoWeAreMediaId = $this->seedMediaFromFrontendAsset('banner.jpg', 'about-us-who-we-are', $userId);

            $this->insertBms(
                category: 'about-us-header-section',
                slug: 'about-us-header-section',
                title: 'About Alpha Pack',
                brief: 'Over 20 years of mastering the art of creating high-quality adhesive labels that help brands communicate, stand out, and build trust.',
                content: null,
                imageId: $headerMediaId,
                weightOrder: 10,
                timestamp: $nowTs,
                userId: $userId,
            );

            $this->insertBms(
                category: 'about-us-who-we-are',
                slug: 'about-us-who-we-are',
                title: 'Who We Are',
                brief: "With over 20 years in the business, we've mastered the art of creating high-quality adhesive labels that do more than stick.",
                content: '<p>We specialize in adhesive labels for food, retail, pharmaceutical, and industrial applications, delivering eye-catching shelf appeal, reliable adhesion, and long-lasting durability in every piece we produce.</p><p>From self-adhesive labels and barcode labels to shrink sleeves, stretch sleeves, tamper-proof labels, and in-mold labels, Alpha Pack offers a complete range of labeling solutions to meet every packaging need.</p>',
                imageId: $whoWeAreMediaId,
                weightOrder: 10,
                timestamp: $nowTs,
                userId: $userId,
            );

            $historyItems = [
                [
                    'title' => 'Early 2000s - Foundation',
                    'brief' => 'Alpha Pack was founded with a commitment to producing high-quality adhesive labels. Starting with a small team and a single press, we set out to serve local businesses with reliable label solutions.',
                ],
                [
                    'title' => '2005-2010 - Growth & Expansion',
                    'brief' => 'As demand grew, we expanded our production capabilities and invested in advanced flexographic printing technology, allowing us to serve larger clients across food, retail, and pharmaceutical sectors.',
                ],
                [
                    'title' => '2010-2015 - Diversification',
                    'brief' => 'We broadened our product range to include shrink sleeves, stretch sleeves, barcode labels, and tamper-proof labels, becoming a one-stop shop for packaging and labeling solutions.',
                ],
                [
                    'title' => '2015-2020 - Innovation',
                    'brief' => 'Investment in in-mold labeling technology and premium materials like clear-on-clear and aluminum labels positioned us as a leader in high-end packaging solutions.',
                ],
                [
                    'title' => '2020-Present - Industry Leadership',
                    'brief' => 'Today, with over 20 years of expertise, 500+ satisfied clients, and millions of labels produced, Alpha Pack continues to set the standard for quality, innovation, and customer service in the labeling industry.',
                ],
            ];

            foreach ($historyItems as $index => $item) {
                $this->insertBms(
                    category: 'about-us-our-history-cards',
                    slug: 'about-us-our-history-card-' . ($index + 1),
                    title: $item['title'],
                    brief: $item['brief'],
                    content: null,
                    imageId: null,
                    weightOrder: ($index + 1) * 10,
                    timestamp: $nowTs,
                    userId: $userId,
                );
            }

            $testimonialItems = [
                [
                    'quote' => '"Alpha Pack has been our go-to for product labels for over 5 years. The quality is consistently outstanding, and their team always meets our tight deadlines. Highly recommended."',
                    'author' => 'Sarah M.',
                    'role' => 'Production Manager, Food & Beverage Company',
                ],
                [
                    'quote' => '"We switched to Alpha Pack for our pharmaceutical labels and have not looked back. The print clarity is exceptional, and the adhesion is perfect for our regulatory requirements."',
                    'author' => 'David K.',
                    'role' => 'Quality Director, Pharmaceutical Company',
                ],
                [
                    'quote' => '"The clear-on-clear labels for our cosmetics line are absolutely stunning. Our products look premium on the shelf, and the no-label appearance has been a hit with our customers."',
                    'author' => 'Emma R.',
                    'role' => 'Brand Manager, Cosmetics Brand',
                ],
                [
                    'quote' => '"Alpha Pack barcode labels have dramatically improved our warehouse efficiency. Scanning accuracy is near-perfect, and the labels withstand our demanding storage conditions."',
                    'author' => 'James T.',
                    'role' => 'Operations Lead, Logistics Company',
                ],
                [
                    'quote' => '"Great value and great service. The team helped us choose the right material for our outdoor equipment labels. They survived rain, sun, and everything in between."',
                    'author' => 'Mark L.',
                    'role' => 'Procurement Manager, Industrial Equipment',
                ],
                [
                    'quote' => '"The shrink sleeves Alpha Pack produced for our beverage line are eye-catching and durable. Sales noticeably improved since the rebrand."',
                    'author' => 'Lisa O.',
                    'role' => 'Marketing Director, Beverage Brand',
                ],
            ];

            foreach ($testimonialItems as $index => $item) {
                $this->insertBms(
                    category: 'about-us-testimonials',
                    slug: 'about-us-testimonial-' . ($index + 1),
                    title: $item['author'],
                    brief: $item['quote'],
                    content: null,
                    imageId: null,
                    secondTitle: $item['role'],
                    weightOrder: ($index + 1) * 10,
                    timestamp: $nowTs,
                    userId: $userId,
                );
            }

            $termsContent = '<h3>1. General</h3><p>These terms and conditions govern the supply of goods and services by Alpha Pack. By placing an order, you agree to be bound by these terms.</p><h3>2. Orders &amp; Pricing</h3><p>All quotations are valid for 30 days unless otherwise stated. Prices are subject to change based on material costs and specifications. Orders are confirmed upon written acceptance and cannot be cancelled without prior agreement.</p><h3>3. Artwork &amp; Proofs</h3><p>The customer is responsible for providing print-ready artwork. Alpha Pack will provide proofs for approval prior to production. Once approved, Alpha Pack is not liable for errors in the approved artwork.</p><h3>4. Production &amp; Delivery</h3><p>Delivery timelines are estimated and may vary. Alpha Pack will make reasonable efforts to meet agreed schedules. Delays due to circumstances beyond our control do not constitute grounds for order cancellation.</p><h3>5. Quality Assurance</h3><p>All products are manufactured to industry standards. Any claims regarding defective goods must be made within 7 days of delivery, accompanied by supporting evidence.</p><h3>6. Liability</h3><p>Alpha Pack liability is limited to the value of the goods supplied. We are not responsible for consequential losses, loss of profit, or indirect damages arising from the use of our products.</p><h3>7. Payment Terms</h3><p>Payment is due within 30 days of invoice date unless otherwise agreed. Alpha Pack reserves the right to charge interest on overdue amounts at the prevailing statutory rate.</p><h3>8. Intellectual Property</h3><p>All designs, artwork, and tooling created by Alpha Pack remain our property unless otherwise agreed in writing. Customer-supplied designs remain the property of the customer.</p><h3>9. Confidentiality</h3><p>Both parties agree to keep confidential any proprietary information shared during the course of business.</p><h3>10. Governing Law</h3><p>These terms are governed by applicable laws. Any disputes will be subject to the jurisdiction of the relevant courts.</p>';

            $this->insertBms(
                category: 'about-us-terms-conditions',
                slug: 'about-us-terms-conditions',
                title: 'Terms & Conditions',
                brief: null,
                content: $termsContent,
                imageId: null,
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

        $targetRelativeDir = 'media/about-us';
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
            'category' => $category,
            'url_2' => null,
            'color' => null,
            'promoted_to_front' => 0,
            'code' => null,
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
            'button_text' => null,
            'content' => $content,
            'content2' => null,
        ]);

        return $bmsId;
    }
}
