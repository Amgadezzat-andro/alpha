<?php

namespace App\Http\Controllers;

use App\Filament\Resources\Bms\Model\Bms;
use App\Filament\Resources\Blog\Model\Blog;
use App\Filament\Resources\Button\Model\Button;
use App\Filament\Resources\Page\Model\Page;
use App\Filament\Resources\Product\Model\Product;
use App\Models\Media\Media;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Schema;

class SiteController extends Controller
{
    public function home($lng)
    {
        $data['header'] = Cache::rememberForever('home_header_bms', function () {
            return Bms::activeWithCategory('home-page-header-section')->with(['mainImage'])->first();
        });

        $data['stats'] = Cache::rememberForever('home_stats_bms', function () {
            return Bms::activeWithCategory('home-page-stats-section')->with(['mainImage'])->first();
        });

        $data['promotedProducts'] = Cache::rememberForever('home_promoted_products', function () {
            return Product::where('status', 1)
                ->where('is_campaign', 1)
                ->orderBy('weight_order', 'asc')
                ->orderBy('published_at', 'desc')
                ->limit(6)
                ->get();
        });

        $data['promotedBlogs'] = Cache::rememberForever('home_promoted_blogs', function () {
            return Blog::where('status', 1)
                ->where('is_campaign', 1)
                ->with(['mainImage'])
                ->orderBy('weight_order', 'asc')
                ->orderBy('published_at', 'desc')
                ->limit(6)
                ->get();
        });

        $data['whyLabelingEasy'] = Cache::rememberForever('home_why_labeling_easy', function () {
            return Bms::activeWithCategory('home-page-why-we-make-labling-easy-card')->with(['mainImage'])->get();
        });

        $data['findRightLabel'] = Cache::rememberForever('home_find_right_label', function () {
            return Bms::activeWithCategory('home-page-find-right-label')->with(['mainImage'])->first();
        });

        $data['ourClients'] = Cache::rememberForever('home_our_clients', function () {
            return Bms::activeWithCategory('home-page-our-clients')->with(['mainImage'])->first();
        });

        $catalogueMediaId = setting("{$lng}.site.catalogue_file") ?: setting('site.catalogue_file');
        $catalogueMedia = !empty($catalogueMediaId) ? Media::find($catalogueMediaId) : null;
        $data['catalogueUrl'] = $catalogueMedia?->url;

        $data['lng'] = $lng;
        return view('site.home', $data);
    }



    public function index($locale, $slug)
    {
        $pageTable = (new Page())->getTable();

        if (!Schema::hasTable($pageTable)) {
            abort(404);
        }

        $data['taregtPage'] = Cache::rememberForever($slug . "_page_" . (new Page())->getTable(), function () use ($slug) {
            return Page::onlyActive()
                ->where('slug', $slug)
                ->with("firstSections")
                ->first();
        });

        if (isset($data['taregtPage'])) {
            $targetPageSlug = $data['taregtPage']->slug;
            $data["buttons"] = Cache::rememberForever("pages_button" . $targetPageSlug . (new Button())->getTable(), function () use ($targetPageSlug) {
                return Button::ActiveWithCategory($targetPageSlug)->get();
            });
            return view('site.' . $data['taregtPage']->view, $data);
        }

        abort(404);
    }

    public function aboutUs($lng)
    {
        $data['aboutHeader'] = Cache::rememberForever('about_us_header_bms', function () {
            return Bms::activeWithCategory('about-us-header-section')->with(['mainImage', 'frontButtons'])->first();
        });

        $data['aboutWhoWeAre'] = Cache::rememberForever('about_us_who_we_are_bms', function () {
            return Bms::activeWithCategory('about-us-who-we-are')->with(['mainImage', 'frontButtons'])->first();
        });

        $data['aboutHistoryCards'] = Cache::rememberForever('about_us_history_cards_bms', function () {
            return Bms::activeWithCategory('about-us-our-history-cards')->with(['mainImage', 'frontButtons'])->get();
        });

        $data['aboutTestimonials'] = Cache::rememberForever('about_us_testimonials_bms', function () {
            return Bms::activeWithCategory('about-us-testimonials')->with(['mainImage', 'frontButtons'])->get();
        });

        $data['aboutTerms'] = Cache::rememberForever('about_us_terms_bms', function () {
            return Bms::activeWithCategory('about-us-terms-conditions')->with(['mainImage', 'frontButtons'])->first();
        });

        $data['lng'] = $lng;

        return view('site.about-us', $data);
    }
}
