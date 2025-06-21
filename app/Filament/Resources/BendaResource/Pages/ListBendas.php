<?php

namespace App\Filament\Resources\BendaResource\Pages;

use App\Filament\Resources\BendaResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListBendas extends ListRecords
{
    protected static string $resource = BendaResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
