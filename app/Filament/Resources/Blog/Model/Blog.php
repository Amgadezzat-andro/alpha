<?php

namespace App\Filament\Resources\Blog\Model;

use App\Filament\Resources\DropdownList\Model\DropdownList;
use App\Models\Base\BaseTranslationModel;
use App\Models\Media\Media;
use App\Traits\HasSeo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Collection;
use Laravel\Scout\Searchable;

class Blog extends BaseTranslationModel
{
    use HasFactory, HasSeo, Searchable;


    protected $translationForeignKey = 'blog_id';

    protected $table = 'blog';


    public $translatedAttributes =
        [
            'title',
            'brief',
            'content',
            'image_id'
        ];

    protected $fillable =
        [
            'category_id',
            'slug',
            'status',
            'is_campaign',
            'published_at',
            'revision',
            'changed',
            'reject_note',
            'weight_order',
            'views',
            'reading_time',
        ];

    protected $casts = [
        'published_at' => 'date',
    ];



    public function category()
    {
        return $this->belongsTo(DropdownList::class, 'category_id', 'id');
    }

    public static function getBlogCategoryList()
    {
        $blogCategories = DropdownList::with('translations')->active()
            ->where('category', DropdownList::BLOG_CATEGORY)
            ->get();

        if ($blogCategories->isEmpty()) {
            $blogCategories = DropdownList::with('translations')->active()
                ->where('category', DropdownList::NEWS_CATEGORY)
                ->get();
        }

        return $blogCategories->mapWithKeys(fn ($i) => [$i->id => $i->title]);
    }

    public function mainImage()
    {
        $locale = app()->getLocale();

        return $this->hasOneThrough(
            Media::class,
            BlogLang::class,
            'blog_id',
            'id',
            'id',
            'image_id'
        )->where('language', $locale);
    }

    public function makeSearchableUsing(Collection $models): Collection
    {
        return $models->load('translations');
    }

    public function toSearchableArray()
    {
        return
            [
                'title' => $this->title,
                'brief' => $this->brief,
            ];
    }

}
