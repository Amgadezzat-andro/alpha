<?php

namespace App\Http\Controllers;


use App\Filament\Resources\Bms\Model\Bms;
use App\Models\Media\Media;
use Illuminate\Support\Facades\Cache;
use Illuminate\View\View;

class WebformsController extends Controller
{
    public function contactUs(): View
    {
        $lng = app()->getLocale();

        $contactHeader = Cache::rememberForever('contact_us_header_bms', function () {
            return Bms::activeWithCategory('contact-us-header-section')->with(['mainImage', 'frontButtons'])->first();
        });

        $locationTitle = setting("{$lng}.site.location");
        $locationCoordinate = setting('site.location_coordinate');
        $locationUrl = setting('site.location_url');
        $catalogueMediaId = setting("{$lng}.site.catalogue_file") ?: setting('site.catalogue_file');
        $catalogueMedia = !empty($catalogueMediaId) ? Media::find($catalogueMediaId) : null;

        $contactInfo = [
            'phone' => setting('site.phone'),
            'fax' => setting('site.fax'),
            'email' => setting('site.management_email'),
            'address' => $locationTitle,
            'business_hours' => setting('site.business_hours'),
            'location_url' => $locationUrl,
        ];

        $mapQuery = $locationCoordinate ?: $locationTitle;

        return view('webforms.contact-form', [
            'contactHeader' => $contactHeader,
            'contactInfo' => $contactInfo,
            'mapQuery' => $mapQuery,
            'catalogueUrl' => $catalogueMedia?->url,
        ]);
    }



}
