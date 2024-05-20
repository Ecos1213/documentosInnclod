<?php

namespace App\Repositories\Interfaces;
use App\Models\DocDocumento;
use App\Repositories\Interfaces\DocumentoInterface;
use Illuminate\Database\Eloquent\ModelNotFoundException;

interface DocDocumentoRepositoryInterface extends DocumentoInterface
{
    public function getAll($docNombre);
    public function getById($id): DocDocumento | ModelNotFoundException;
    public function create(array $attributes): DocDocumento;
    public function update($id, array $attributes): DocDocumento | ModelNotFoundException;
    public function loadDoc($documento): DocDocumento;
}
