<?php

namespace App\Repositories;

use App\Models\DocDocumento;
use App\Repositories\Interfaces\DocDocumentoRepositoryInterface;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class DocDocumentoRepository implements DocDocumentoRepositoryInterface
{
    /**
     * Create a new class instance.
     */
    public function __construct()
    {
        //
    }

    public function getAll() {
        return DocDocumento::all();
    }

    public function getById($id): DocDocumento | ModelNotFoundException
    {
        return DocDocumento::findOrFail($id);
    }

    public function create(array $attributes): DocDocumento
    {
        return DocDocumento::create($attributes);
    }

    public function update($id, array $attributes): DocDocumento
    {
        $documento = DocDocumento::find($id);
        $documento->update($attributes);
        return $documento;
    }

    public function delete($id) {
        DocDocumento::destroy($id);
    }
}
