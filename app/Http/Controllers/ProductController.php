<?php

namespace App\Http\Controllers;

use App\Filament\Resources\Bms\Model\Bms;
use App\Filament\Resources\DropdownList\Model\DropdownList;
use App\Filament\Resources\Product\Model\Product;
use Illuminate\Support\Facades\Cache;

class ProductController extends Controller
{
    public function index()
    {
        $lng = app()->getLocale();

        $data['lng'] = $lng;

        $data['productsBanner'] = Cache::remember("products_index_banner_{$lng}", now()->addMinutes(10), function () {
            return Bms::activeWithCategory('products-index-banner')->with(['mainImage', 'frontButtons'])->first();
        });

        $data['productsWhyChoose'] = Cache::remember("products_why_choose_{$lng}", now()->addMinutes(10), function () {
            return Bms::activeWithCategory('products-why-choose-us')->with(['mainImage', 'frontButtons'])->first();
        });

        $data['productsProcess'] = Cache::remember("products_process_{$lng}", now()->addMinutes(10), function () {
            return Bms::activeWithCategory('products-our-process')->with(['mainImage', 'frontButtons'])->first();
        });

        $data['allProducts'] = Cache::remember("products_all_{$lng}", 300, function () {
            return Product::active()->with(['mainImage', 'category'])->get();
        });

        $data['productCategories'] = DropdownList::activeWithCategory(DropdownList::PRODUCT_CATEGORY)->get();

        return view('products.index', $data);
    }

    public function view($locale, $slug)
    {
        $lng = app()->getLocale();

        $data['lng'] = $lng;

        $data['targetItem'] = Product::active()
            ->with(['mainImage', 'category'])
            ->where('slug', $slug)
            ->first();

        if (!$data['targetItem']) {
            abort(404);
        }

        $data['targetItem']->increment('views');
        $data['galleryItems'] = $data['targetItem']->getResolvedGalleryItems();
        $data['descriptionSections'] = $data['targetItem']->getResolvedDescriptionSections();
        $data['clientLogos'] = $data['targetItem']->getResolvedClientLogos();

        return view('products.view', $data);
    }
}
