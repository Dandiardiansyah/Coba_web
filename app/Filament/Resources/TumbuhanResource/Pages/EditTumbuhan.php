<?php

namespace App\Filament\Resources\TumbuhanResource\Pages;

use App\Filament\Resources\TumbuhanResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditTumbuhan extends EditRecord
{
    protected static string $resource = TumbuhanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
