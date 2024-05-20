<?php

namespace App\Repositories\Interfaces;
use App\Models\ProProceso;
use App\Repositories\Interfaces\DocumentoInterface;
use Illuminate\Database\Eloquent\ModelNotFoundException;

interface ProProcesoRepositoryInterface extends DocumentoInterface
{
    public function getById($id): ProProceso | ModelNotFoundException;
    public function create(array $attributes): ProProceso;
    public function update($id, array $attributes): ProProceso | ModelNotFoundException;
}
