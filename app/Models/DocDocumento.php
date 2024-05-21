<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Support\Facades\DB;

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

    public static function boot()
    {
        parent::boot();

        static::creating(function ($model) {

            DB::transaction(function() use ($model) {
                $uniqueNumber = DocDocumento::where('doc_id_proceso', $model->doc_id_proceso)
                                            ->where('doc_id_tipo', $model->doc_id_tipo)
                                            ->lockForUpdate()
                                            ->count() + 1;

                $textCode = $model->doc_codigo.$uniqueNumber;

                // Verificar unicidad
                while (static::where('doc_codigo', $textCode)->exists()) {
                    $textCode = $model->doc_codigo.$uniqueNumber++;
                }

                $model->doc_codigo = $textCode;
            });

            // $max = static::max('doc_codigo');
            // $model->doc_codigo = $max + 1;

            // Verificar unicidad
            // while (static::where('doc_codigo', $model->doc_codigo)->exists()) {
            //     $model->doc_codigo++;
            // }
        });

        static::updating(function ($model) {

            DB::transaction(function() use ($model) {
                $uniqueNumber = DocDocumento::where('doc_id_proceso', $model->doc_id_proceso)
                                            ->where('doc_id_tipo', $model->doc_id_tipo)
                                            ->lockForUpdate()
                                            ->count() + 1;

                $textCode = $model->doc_codigo.$uniqueNumber;

                // Verificar unicidad
                while (static::where('doc_codigo', $textCode)->exists()) {
                    $textCode = $model->doc_codigo.$uniqueNumber++;
                }

                $model->doc_codigo = $textCode;
            });

            // $max = static::max('doc_codigo');
            // $model->doc_codigo = $max + 1;

            // Verificar unicidad
            // while (static::where('doc_codigo', $model->doc_codigo)->exists()) {
            //     $model->doc_codigo++;
            // }
        });
    }

    public function proproceso(): BelongsTo {
        return $this->belongsTo(ProProceso::class, 'doc_id_proceso');
    }

    public function tiptipodoc(): BelongsTo {
        return $this->belongsTo(TipTipoDoc::class, 'doc_id_tipo');
    }
}
