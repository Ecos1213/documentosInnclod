<?php

namespace App\Repositories;

use App\Models\DocDocumento;
use App\Repositories\Interfaces\DocDocumentoRepositoryInterface;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;

class DocDocumentoRepository implements DocDocumentoRepositoryInterface
{
    /**
     * Create a new class instance.
     */
    public function __construct()
    {
        //
    }

    public function getAll($docNombre = "") {
        return DocDocumento::where('doc_nombre', 'like', "%{$docNombre}%")->with(['proproceso', 'tiptipodoc'])->paginate(10);
    }

    public function getById($id): DocDocumento | ModelNotFoundException
    {
        return DocDocumento::findOrFail($id);
    }

    public function create(array $attributes): DocDocumento
    {
        return DocDocumento::create($attributes);
    }

    public function update($id, array $attributes): DocDocumento | ModelNotFoundException
    {
        $documento = $this->getById($id);
        $documento->update($attributes);
        return $documento;
    }

    public function delete($id) {
        DocDocumento::destroy($id);
    }

    public function loadDoc($documento): DocDocumento {
        return $documento->load('proproceso', 'tiptipodoc');
    }

}
