<?php

namespace App\Filament\Resources\AskQuoteWebform;

use App\Filament\Resources\AskQuoteWebform\Exports\Exporter;
use App\Filament\Resources\AskQuoteWebform\Model\AskQuoteWebform;
use App\Filament\Resources\AskQuoteWebform\ResourcePages\ListItems;
use CactusGalaxy\FilamentAstrotomic\Resources\Concerns\ResourceTranslatable;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Support\Enums\ActionSize;
use Filament\Tables;
use Filament\Tables\Actions\ExportAction;
use Filament\Tables\Actions\ExportBulkAction;
use Filament\Tables\Table;

class AskQuoteWebformResource extends Resource
{
    use ResourceTranslatable;

    protected static ?string $model = AskQuoteWebform::class;

    protected static ?string $navigationIcon = 'heroicon-s-inbox-stack';

    protected static ?int $navigationSort = 2;

    public static function getNavigationBadge(): ?string
    {
        return self::$model::count();
    }

    public static function getNavigationLabel(): string
    {
        return __('Ask Quote Webform');
    }

    public static function getModelLabel(): string
    {
        return __('Ask Quote Webform');
    }

    public static function getPluralLabel(): ?string
    {
        return __('Ask Quote Webform');
    }

    public static function getPluralModelLabel(): string
    {
        return __('Ask Quote Webform');
    }

    public static function getNavigationGroup(): ?string
    {
        return __('WebForms');
    }

    public static function form(Form $form): Form
    {
        return $form->schema([]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('first_name')
                    ->label(__('First Name'))
                    ->searchable(),

                Tables\Columns\TextColumn::make('last_name')
                    ->label(__('Last Name'))
                    ->searchable(),

                Tables\Columns\TextColumn::make('email')
                    ->label(__('Email'))
                    ->searchable(),

                Tables\Columns\TextColumn::make('company')
                    ->label(__('Company'))
                    ->searchable(),

                Tables\Columns\TextColumn::make('country')
                    ->label(__('Country'))
                    ->searchable(),

                Tables\Columns\TextColumn::make('phone')
                    ->label(__('Phone'))
                    ->searchable(),

                Tables\Columns\TextColumn::make('product')
                    ->label(__('Product Offered'))
                    ->searchable(),

                Tables\Columns\TextColumn::make('quantity')
                    ->label(__('Quantity'))
                    ->numeric(),

                Tables\Columns\TextColumn::make('file_upload')
                    ->label(__('File'))
                    ->searchable()
                    ->formatStateUsing(fn (?string $state): string => $state ? basename($state) : '-')
                    ->url(fn ($record): ?string => $record->file_upload ? asset('storage/' . $record->file_upload) : null)
                    ->openUrlInNewTab()
                    ->limit(40)
                    ->toggleable(isToggledHiddenByDefault: true),

                Tables\Columns\TextColumn::make('message')
                    ->label(__('Message'))
                    ->searchable()
                    ->limit(60),

                \App\Classes\FilamentUtility::createdAtColumn(),
            ])
            ->defaultSort('id', 'desc')
            ->striped()
            ->filters([])
            ->actions([
                Tables\Actions\Action::make('download_file')
                    ->label(__('Download File'))
                    ->icon('heroicon-o-arrow-down-tray')
                    ->url(fn ($record): ?string => $record->file_upload ? asset('storage/' . $record->file_upload) : null, shouldOpenInNewTab: true)
                    ->visible(fn ($record): bool => filled($record->file_upload)),
            ])
            ->headerActions([
                ExportAction::make()
                    ->exporter(Exporter::class)
                    ->chunkSize(500)
                    ->color('success')
                    ->icon('heroicon-o-inbox-arrow-down')
                    ->iconButton()
                    ->size(ActionSize::Large),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    ExportBulkAction::make()
                        ->exporter(Exporter::class)
                        ->color('success')
                        ->icon('heroicon-o-inbox-arrow-down')
                        ->label('Export Spacific Columns')
                        ->chunkSize(500),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListItems::route('/'),
        ];
    }
}
