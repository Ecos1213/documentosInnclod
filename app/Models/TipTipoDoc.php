<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class TipTipoDoc extends Model
{
    use HasFactory;

    protected $fillable = [
        'tip_nombre',
        'tip_prefijo'
    ];

    public function docdocumentos(): HasMany {
        return $this->hasMany(DocDocumento::class);
    }
}
