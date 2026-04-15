<?php

namespace App\Filament\Resources\Blog\Model;

use App\Models\Base\BaseLangModel;
use App\Models\Media\Media;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class BlogLang extends BaseLangModel
{
    use HasFactory;

    protected $table = 'blog_lang';
    public $timestamps = false;
    protected $fillable = ['title', 'brief', 'content', 'image_id'];

    public function mainImage()
    {
        return $this->belongsTo(Media::class, 'image_id', 'id');
    }


}
