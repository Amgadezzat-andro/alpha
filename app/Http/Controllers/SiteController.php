<?php

namespace App\Http\Controllers;

use App\Filament\Resources\Bms\Model\Bms;
use App\Filament\Resources\Button\Model\Button;
use App\Filament\Resources\Page\Model\Page;
use Illuminate\Support\Facades\Cache;

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
}
