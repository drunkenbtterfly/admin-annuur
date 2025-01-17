<?php

namespace App\Filament\Resources;

use App\Filament\Resources\KegiatanTambahanResource\Pages;
use App\Filament\Resources\KegiatanTambahanResource\RelationManagers;
use App\Models\KegiatanTambahan;
use Filament\Forms;
use Filament\Forms\Components\Card;
use Filament\Forms\Components\TextInput;
use Filament\Resources\Form;
use Filament\Resources\Resource;
use Filament\Resources\Table;
use Filament\Tables;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class KegiatanTambahanResource extends Resource
{
    protected static ?string $model = KegiatanTambahan::class;

    protected static ?string $navigationLabel = 'Kegiatan Tambahan';

    protected static ?string $navigationGroup = 'Program & Fasilitas';

    protected static ?string $navigationIcon = 'heroicon-o-collection';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Card::make()
                ->schema([
                    TextInput::make('deskripsi')->required(),
                ])
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('deskripsi'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
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
            'index' => Pages\ListKegiatanTambahans::route('/'),
            'create' => Pages\CreateKegiatanTambahan::route('/create'),
            'edit' => Pages\EditKegiatanTambahan::route('/{record}/edit'),
        ];
    }    
}
