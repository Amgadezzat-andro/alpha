<?php

namespace App\Filament\Resources\AskQuoteWebform\Model;

use App\Models\Base\BaseModelNotForAdmin;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class AskQuoteWebform extends BaseModelNotForAdmin
{
    use HasFactory;

    protected $dateFormat = 'U';

    protected $table = 'ask_quote_webform';

    const UPDATED_AT = null;

    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'company',
        'country',
        'phone',
        'product',
        'quantity',
        'file_upload',
        'message',
    ];
}
