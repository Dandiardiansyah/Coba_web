<?php

namespace App\Filament\Resources;

use Filament\Forms;
use Filament\Tables;
use App\Models\Manusia;
use Filament\Forms\Form;
use Filament\Tables\Table;
use Filament\Resources\Resource;
use Illuminate\Support\Facades\Storage;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\ManusiaResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\ManusiaResource\RelationManagers;

class ManusiaResource extends Resource
{
    protected static ?string $model = Manusia::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([

                Forms\Components\TextInput::make('nama')
                    ->required()
                    ->maxLength(255),

                Forms\Components\TextInput::make('umur')
                    ->required()
                    ->numeric()
                    ->minValue(1)
                    ->maxValue(120),

                Forms\Components\Textarea::make('alamat')
                    ->required()
                    ->columnSpanFull(),

                Forms\Components\FileUpload::make('foto')
                    ->image()
                    ->directory('image')
                    ->disk('public')
                    ->maxSize(2048) // 2MB
                    ->imageResizeMode('cover')
                    ->imageResizeTargetWidth('300')
                    ->imageResizeTargetHeight('300')
                    ->downloadable()
                    ->openable()
                    ->previewable()
                    ->columnSpanFull(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\ImageColumn::make('foto'),
                Tables\Columns\TextColumn::make('nama')
                    ->searchable()
                    ->sortable(),

                Tables\Columns\TextColumn::make('umur')
                    ->sortable(),

                Tables\Columns\TextColumn::make('alamat')
                    ->limit(50)
                    ->tooltip(function (Tables\Columns\TextColumn $column): ?string {
                        $state = $column->getState();
                        if (strlen($state) <= 50) {
                            return null;
                        }
                        return $state;
                    }),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\ViewAction::make(),
                Tables\Actions\DeleteAction::make()
                    ->before(function ($record) {
                        // Hapus file foto saat data dihapus
                        if ($record->foto) {
                            Storage::disk('public')->delete($record->foto); // Tambahkan disk('public')
                        }
                    }),

            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make()
                        ->before(function ($records) {
                            // Hapus semua file foto saat bulk delete
                            foreach ($records as $record) {
                                if ($record->foto) {
                                    Storage::disk('public')->delete($record->foto); // Tambahkan disk('public')
                                }
                            }
                        }),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListManusias::route('/'),
            'create' => Pages\CreateManusia::route('/create'),
            'edit' => Pages\EditManusia::route('/{record}/edit'),
        ];
    }
}
