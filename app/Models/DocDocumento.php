<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class DocDocumento extends Model
{
    use HasFactory;

    protected $fillable = [
        'doc_id_tipo',
        'doc_id_proceso',
        'doc_nombre',
        'doc_codigo',
        'doc_contenido'
    ];

    protected $guarded = [
        'id',
        'created_at',
        'updated_at'
    ];

    public function proproceso(): BelongsTo {
        return $this->belongsTo(ProProceso::class);
    }

    public function tiptipodoc(): BelongsTo {
        return $this->belongsTo(TipTipoDoc::class);
    }
}
