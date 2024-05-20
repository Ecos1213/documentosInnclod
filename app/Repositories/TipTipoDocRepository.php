<?php

namespace App\Repositories;

use App\Models\TipTipoDoc;
use App\Repositories\Interfaces\TipTipoDocRepositoryInterface;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class TipTipoDocRepository implements TipTipoDocRepositoryInterface
{
    /**
     * Create a new class instance.
     */
    public function __construct()
    {
        //
    }

    public function getAll() {
        return TipTipoDoc::all();
    }

    public function getById($id): TipTipoDoc | ModelNotFoundException
    {
        return TipTipoDoc::findOrFail($id);
    }

    public function create(array $attributes): TipTipoDoc
    {
        return TipTipoDoc::create($attributes);
    }

    public function update($id, array $attributes): TipTipoDoc
    {
        $tipTipoDoc = TipTipoDoc::find($id);
        $tipTipoDoc->update($attributes);
        return $tipTipoDoc;
    }

    public function delete($id) {
        TipTipoDoc::destroy($id);
    }
}
