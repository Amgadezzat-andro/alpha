<?php

namespace App\Filament\Resources\Bms\Model;

use App\Filament\Resources\Button\Model\Button;
use App\Filament\Resources\DropdownList\Model\DropdownList;
use App\Models\Base\BaseTranslationModel;
use App\Models\Media\Media;
use Illuminate\Database\Eloquent\Factories\HasFactory;


class Bms extends BaseTranslationModel
{
    use HasFactory;

    protected $table = 'bms';
    protected $translationForeignKey = 'parent_id';

    public $translatedAttributes =
        [
            'title',
            'second_title',
            'brief',
            'image_id',
            'cover_image_id',
            'video_id',
            // 'image_responsive_id',
            'button_text',
            'content',
            'content2',
            'json_items'
        ];

    protected $fillable =
        [
            'slug',
            'status',
            // 'url',
            'code',
            'category',
            'rate',
            'site_id',
            'weight_order',
            'published_at',
            'revision',
            'changed',
            'reject_note',
            'module_class',
            'module_id',
        ];


    public function scopeActiveWithCategory($query, $category)
    {
        return $query->where('status', self::STATUS_PUBLISHED)
            ->where('category', $category)
            ->with("translations")
            ->orderBy("weight_order", "ASC")
            ->orderBy("published_at", "DESC");
    }

    public static function getBmsCategoryList()
    {
        $categories = DropdownList::with('translations')->active()->where("category", DropdownList::BMS_CATEGORY)->get()->mapWithKeys(function ($i) {
            return [$i->slug => $i->title];
        });
        return $categories;
    }

    public static function getCategoryList()
    {
        $formatted = [];
        foreach (self::getGroupedCategories() as $groupName => $categories) {
            foreach ($categories as $key => $value) {
                $formatted[$key] = "[$groupName] $value";
            }
        }
        return $formatted;
    }

    public static function getCategoryListPlain()
    {
        return [
            //! Home PAGE
            'home-page-header-section' => __('Home Page Header Section'),
            'home-page-stats-section' => __('Home Page Stats Section'),
            'home-page-why-we-make-labling-easy-card'=> __('Home Page Why We Make Labeling Easy Section-card'),
            'home-page-find-right-label'=> __('Home Page Find The Right Label For Your Project Section'),
            'home-page-our-clients'=> __('Home Page Our Clients Section'),


            //!! About Us
            'about-us-header-section' => __('About Us Header Section'),
            'about-us-who-we-are' => __('About Us Who We Are Section'),
            'about-us-our-history-cards' => __('About Us Our History Card'),
            'about-us-testimonials' => __('About Us Testimonials'),
            'about-us-terms-conditions' => __('About Us Terms & Conditions'),

            //!! Proudcts
            'products-index-banner' => __('Products Index Banner'),
            'products-why-choose-us' => __('Products Why Choose Us Section'),
            'products-our-process' => __('Products Our Process Section'),

            // !! BLOGS
            'blogs-index-banner' => __('Blogs Index Banner'),

            // !! CONTACT US
            'contact-us-header-section' => __('Contact Us Header Section'),


        ];
    }

    public static function getGroupedCategories()
    {
        return [
            __('HomePage') => [
                'home-page-header-section' => __('Home Page Header Section'),
                'home-page-stats-section' => __('Home Page Stats Section'),
                'home-page-why-we-make-labling-easy-card'=> __('Home Page Why We Make Labeling Easy Section-card'),
                'home-page-find-right-label'=> __('Home Page Find The Right Label For Your Project Section'),
                'home-page-our-clients'=> __('Home Page Our Clients Section'),

            ],
            __('About Us') => [
                'about-us-header-section' => __('About Us Header Section'),
                'about-us-who-we-are' => __('About Us Who We Are Section'),
                'about-us-our-history-cards' => __('About Us Our History Card'),
                'about-us-testimonials' => __('About Us Testimonials'),
                'about-us-terms-conditions' => __('About Us Terms & Conditions'),
            ],
            __('Products') => [
                'products-index-banner' => __('Products Index Banner'),
                'products-why-choose-us' => __('Products Why Choose Us Section'),
                'products-our-process' => __('Products Our Process Section'),
            ],
            __('Blogs') => [
                'blogs-index-banner' => __('Blogs Index Banner'),
            ],
            __('Contact Us') => [
                'contact-us-header-section' => __('Contact Us Header Section'),
            ],
        ];
    }


    // public static function getPageBmsCategoryList()
    // {
    //     $categories = DropdownList::activeWithCategory(DropdownList::PAGE_BMS_CATEGORY)->get()->mapWithKeys(function ($i) {
    //         return [$i->slug => $i->title];
    //     });
    //     return $categories;
    // }


    public function category()
    {
        return $this->belongsTo(DropdownList::class, 'category_slug', 'slug');
    }
    public function buttons()
    {
        return $this->hasMany(Button::class, 'category_slug', 'slug');

    }

    public function frontButtons()
    {
        return $this->hasMany(Button::class, 'category_slug', 'slug')->active();
    }

    public function mainImage()
    {
        $locale = app()->getLocale();

        return $this->hasOneThrough(
            Media::class,
            BmsLang::class,
            'parent_id',
            'id',
            'id',
            'image_id'
        )->where('language', $locale);
    }
    public function coverImage()
    {
        $locale = app()->getLocale();

        return $this->hasOneThrough(
            Media::class,
            BmsLang::class,
            'parent_id',
            'id',
            'id',
            'cover_image_id'
        )->where('language', $locale);
    }
    public function mainVideo()
    {
        $locale = app()->getLocale();

        return $this->hasOneThrough(
            Media::class,
            BmsLang::class,
            'parent_id',
            'id',
            'id',
            'video_id'
        )->where('language', $locale);
    }

    public function mainResponsiveImage()
    {
        $locale = app()->getLocale();

        return $this->hasOneThrough(
            Media::class,
            BmsLang::class,
            'parent_id',
            'id',
            'id',
            'image_responsive_id'
        )->where('language', $locale);
    }





}
