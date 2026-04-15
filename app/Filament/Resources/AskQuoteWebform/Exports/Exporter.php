<?php

namespace App\Filament\Resources\AskQuoteWebform\Exports;

use App\Filament\Exports\BaseExporter;
use App\Filament\Resources\AskQuoteWebform\Model\AskQuoteWebform;
use Filament\Actions\Exports\ExportColumn;
use Filament\Actions\Exports\Models\Export;

class Exporter extends BaseExporter
{
    protected static ?string $model = AskQuoteWebform::class;

    public static function getColumns(): array
    {
        return [
            ExportColumn::make('id')->label('ID'),
            ExportColumn::make('first_name')->label(__('First Name')),
            ExportColumn::make('last_name')->label(__('Last Name')),
            ExportColumn::make('email')->label(__('Email')),
            ExportColumn::make('company')->label(__('Company')),
            ExportColumn::make('country')->label(__('Country')),
            ExportColumn::make('phone')->label(__('Phone')),
            ExportColumn::make('product')->label(__('Product Offered')),
            ExportColumn::make('quantity')->label(__('Quantity')),
            ExportColumn::make('file_upload')->label(__('File')),
            ExportColumn::make('message')->label(__('Message')),
            ExportColumn::make('created_at'),
        ];
    }

    public static function getCompletedNotificationBody(Export $export): string
    {
        $body = 'Your Ask Quote webform export has completed and ' . number_format($export->successful_rows) . ' ' . str('row')->plural($export->successful_rows) . ' exported.';

        if ($failedRowsCount = $export->getFailedRowsCount()) {
            $body .= ' ' . number_format($failedRowsCount) . ' ' . str('row')->plural($failedRowsCount) . ' failed to export.';
        }

        return $body;
    }
}
