<?php

namespace App\Filament\Resources\Product\Model;

use App\Models\Base\BaseLangModel;
use App\Models\Media\Media;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ProductLang extends BaseLangModel
{
    use HasFactory;

    protected $table = 'product_lang';

    public $timestamps = false;

    protected $fillable = [
        'title',
        'hero_title',
        'brief',
        'image_id',
        'gallery_items',
        'description_sections',
        'client_logos',
    ];

    protected $casts = [
        'gallery_items' => 'array',
        'description_sections' => 'array',
        'client_logos' => 'array',
    ];

    public function mainImage()
    {
        return $this->belongsTo(Media::class, 'image_id', 'id');
    }
}
