<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ProProceso extends Model
{
    use HasFactory;

    protected $fillable = [
        'pro_prefijo',
        'pro_nombre'
    ];

    public function docdocumentos(): HasMany {
        return $this->hasMany(DocDocumento::class);
    }
}
