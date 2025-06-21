<?php

namespace App\Filament\Resources\BendaResource\Pages;

use App\Filament\Resources\BendaResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditBenda extends EditRecord
{
    protected static string $resource = BendaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
