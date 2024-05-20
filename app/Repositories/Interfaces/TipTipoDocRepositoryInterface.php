<?php

namespace App\Repositories\Interfaces;
use App\Models\TipTipoDoc;
use App\Repositories\Interfaces\DocumentoInterface;
use Illuminate\Database\Eloquent\ModelNotFoundException;

interface TipTipoDocRepositoryInterface extends DocumentoInterface
{
    public function getById($id): TipTipoDoc | ModelNotFoundException;
    public function create(array $attributes): TipTipoDoc;
    public function update($id, array $attributes): TipTipoDoc;
}
