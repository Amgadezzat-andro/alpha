<?php

namespace App\Filament\Resources\AskQuoteWebform\Policy;

use App\Filament\Resources\AskQuoteWebform\Model\AskQuoteWebform;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AskQuoteWebformPolicy
{
    use HandlesAuthorization;

    public function viewAny(User $user): bool
    {
        return $user->can('view_any_ask::quote::webform::ask::quote::webform');
    }

    public function view(User $user, AskQuoteWebform $askQuoteWebform): bool
    {
        return $user->can('view_ask::quote::webform::ask::quote::webform');
    }

    public function create(User $user): bool
    {
        return $user->can('create_ask::quote::webform::ask::quote::webform');
    }

    public function update(User $user, AskQuoteWebform $askQuoteWebform): bool
    {
        return $user->can('update_ask::quote::webform::ask::quote::webform');
    }

    public function delete(User $user, AskQuoteWebform $askQuoteWebform): bool
    {
        return $user->can('delete_ask::quote::webform::ask::quote::webform');
    }

    public function deleteAny(User $user): bool
    {
        return $user->can('delete_any_ask::quote::webform::ask::quote::webform');
    }

    public function forceDelete(User $user, AskQuoteWebform $askQuoteWebform): bool
    {
        return $user->can('force_delete_ask::quote::webform::ask::quote::webform');
    }

    public function forceDeleteAny(User $user): bool
    {
        return $user->can('force_delete_any_ask::quote::webform::ask::quote::webform');
    }

    public function restore(User $user, AskQuoteWebform $askQuoteWebform): bool
    {
        return $user->can('restore_ask::quote::webform::ask::quote::webform');
    }

    public function restoreAny(User $user): bool
    {
        return $user->can('restore_any_ask::quote::webform::ask::quote::webform');
    }

    public function replicate(User $user, AskQuoteWebform $askQuoteWebform): bool
    {
        return $user->can('replicate_ask::quote::webform::ask::quote::webform');
    }

    public function reorder(User $user): bool
    {
        return $user->can('reorder_ask::quote::webform::ask::quote::webform');
    }
}
