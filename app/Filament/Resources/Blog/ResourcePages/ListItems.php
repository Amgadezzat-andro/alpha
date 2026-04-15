<?php

namespace App\Filament\Resources\Blog\ResourcePages;

use App\Filament\Resources\BaseResource\Pages\ListBase;
use App\Filament\Resources\Blog\BlogResource;

class ListItems extends ListBase
{
    protected static string $resource = BlogResource::class;
}
