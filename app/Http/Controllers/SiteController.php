<?php

namespace App\Http\Controllers;

use App\Filament\Resources\Bms\Model\Bms;
use App\Filament\Resources\Button\Model\Button;
use App\Filament\Resources\Page\Model\Page;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Schema;

class SiteController extends Controller
{
    public function home($lng)
    {
        $data["slider"] = Cache::rememberForever("home_slider_bms", function () {
            return Bms::activeWithCategory("home-page-slider")->with(['mainImage', 'frontButtons'])->get();
        });

        $data["aboutUs"] = Cache::rememberForever("home_about_us_bms", function () {
            return Bms::activeWithCategory("home-page-about-us")->with(['mainImage', 'frontButtons'])->get();
        });

        $data["servicesOverview"] = Cache::rememberForever("home_services_overview_bms", function () {
            return Bms::activeWithCategory("home-page-services-overview")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["servicesCore"] = Cache::rememberForever("home_services_core_bms", function () {
            return Bms::activeWithCategory("home-page-services-core")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["servicesIndustries"] = Cache::rememberForever("home_services_industries_bms", function () {
            return Bms::activeWithCategory("home-page-services-industries")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["cultureHowWeDo"] = Cache::rememberForever("home_culture_how_we_do_bms", function () {
            return Bms::activeWithCategory("home-page-culture-how-we-do")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["cultureRiseValues"] = Cache::rememberForever("home_culture_rise_values_bms", function () {
            return Bms::activeWithCategory("home-page-culture-rise-values")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["cultureEquityDriven"] = Cache::rememberForever("home_culture_equity_driven_bms", function () {
            return Bms::activeWithCategory("home-page-culture-equity-drivin")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["careers"] = Cache::rememberForever("home_careers_bms", function () {
            return Bms::activeWithCategory("home-page-careers")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["internship"] = Cache::rememberForever("home_internship_bms", function () {
            return Bms::activeWithCategory("home-page-our-internship-program")->with(['mainImage', 'frontButtons'])->first();
        });

        $data["lng"] = $lng;
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
