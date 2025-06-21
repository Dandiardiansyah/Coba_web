<?php

namespace App\Filament\Resources\ManusiaResource\Pages;

use App\Filament\Resources\ManusiaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditManusia extends EditRecord
{
    protected static string $resource = ManusiaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
