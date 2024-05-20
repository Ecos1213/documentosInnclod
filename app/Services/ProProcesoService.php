<?php

namespace App\Services;

use App\Repositories\Interfaces\ProProcesoRepositoryInterface;

class ProProcesoService
{
    protected $proProcesoRepository;
    /**
     * Create a new class instance.
     */
    public function __construct(ProProcesoRepositoryInterface $proProcesoRepository) {
        $this->proProcesoRepository = $proProcesoRepository;
    }

    public function getAllProProcesos() {
        return $this->proProcesoRepository->getAll();
    }

    public function getProProcesoById($id) {
        return $this->proProcesoRepository->getById($id);
    }

    public function createProProceso(array $data) {
        return $this->proProcesoRepository->create($data);
    }

    public function updateProProceso($id, array $data) {
        return $this->proProcesoRepository->update($id, $data);
    }

    public function deleteProProceso($id) {
        return $this->proProcesoRepository->delete($id);
    }

}
