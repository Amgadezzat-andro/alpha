<?php

namespace App\Http\Controllers;

use App\Filament\Resources\Bms\Model\Bms;
use App\Filament\Resources\Blog\Model\Blog;
use Illuminate\Support\Facades\Cache;

class BlogController extends Controller
{
    public function index()
    {
        $lng = app()->getLocale();

        $data['lng'] = $lng;

        $data['blogBanner'] = Cache::remember("blog_index_banner_{$lng}", now()->addMinutes(10), function () {
            return Bms::activeWithCategory('blogs-index-banner')->with(['mainImage', 'frontButtons'])->first();
        });

        $data['allBlogs'] = Cache::remember("blog_all_{$lng}", 300, function () {
            return Blog::active()->with(['mainImage', 'category'])->orderByDesc('published_at')->get();
        });

        return view('blog.index', $data);
    }

    public function view($locale, $slug)
    {
        $lng = app()->getLocale();

        $data['lng'] = $lng;

        $data['targetItem'] = Blog::active()
            ->where('slug', $slug)
            ->first();

        if (!$data['targetItem']) {
            abort(404);
        }

        $data['targetItem']->increment('views');

        $data['relatedBlogs'] = Blog::active()
            ->where('slug', '!=', $slug)
            ->with(['mainImage', 'category'])
            ->orderByDesc('published_at')
            ->limit(6)
            ->get();

        return view('blog.view', $data);
    }
}





