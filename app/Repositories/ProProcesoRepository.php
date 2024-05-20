<?php

namespace App\Repositories;

use App\Models\ProProceso;
use App\Repositories\Interfaces\ProProcesoRepositoryInterface;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class ProProcesoRepository implements ProProcesoRepositoryInterface
{
    /**
     * Create a new class instance.
     */
    public function __construct()
    {
        //
    }

    public function getAll() {
        return ProProceso::all();
    }

    public function getById($id): ProProceso | ModelNotFoundException
    {
        return ProProceso::findOrFail($id);
    }

    public function create(array $attributes): ProProceso
    {
        return ProProceso::create($attributes);
    }

    public function update($id, array $attributes): ProProceso
    {
        $proceso = ProProceso::find($id);
        $proceso->update($attributes);
        return $proceso;
    }

    public function delete($id) {
        ProProceso::destroy($id);
    }
}
