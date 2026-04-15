<?php

namespace App\Filament\Resources\AskQuoteWebform\ResourcePages;

use App\Filament\Resources\AskQuoteWebform\AskQuoteWebformResource;
use Filament\Resources\Pages\ListRecords;

class ListItems extends ListRecords
{
    protected static string $resource = AskQuoteWebformResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // Actions\CreateAction::make(),
        ];
    }
}
