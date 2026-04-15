<?php

namespace App\Http\Controllers;


use Illuminate\View\View;

class WebformsController extends Controller
{
    public function contactUs(): View
    {
        $lng = app()->getLocale();
        $locationTitle = setting("{$lng}.site.location");
        $locationCoordinate = setting('site.location_coordinate');
        $locationUrl = setting('site.location_url');

        $contactInfo = [
            'phone' => setting('site.phone'),
            'fax' => setting('site.fax'),
            'email' => setting('site.management_email'),
            'address' => $locationTitle,
            'business_hours' => setting('site.business_hours'),
            'linkedin_url' => setting('site.linkedin_url'),
            'instagram_url' => setting('site.instagram_url'),
            'facebook_url' => setting('site.facebook_url'),
            'youtube_url' => setting('site.youtube_url'),
            'location_url' => $locationUrl,
        ];

        $mapQuery = $locationCoordinate ?: $locationTitle;

        return view('webforms.contact-form', [
            'contactInfo' => $contactInfo,
            'mapQuery' => $mapQuery,
        ]);
    }



}
