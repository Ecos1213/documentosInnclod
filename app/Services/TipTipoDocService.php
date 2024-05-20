<?php

namespace App\Services;

use App\Repositories\Interfaces\TipTipoDocRepositoryInterface;

class TipTipoDocService
{
    protected $tipTipoDocRepository;
    /**
     * Create a new class instance.
     */
    public function __construct(TipTipoDocRepositoryInterface $tipTipoDocRepository)
    {
        $this->tipTipoDocRepository = $tipTipoDocRepository;
    }

    public function getAllTipTipoDoc() {
        return $this->tipTipoDocRepository->getAll();
    }

    public function getTipTipoDocById($id) {
        return $this->tipTipoDocRepository->getById($id);
    }

    public function createTipTipoDoc(array $array) {
        return $this->tipTipoDocRepository->create($array);
    }

    public function updateTipTipoDoc($id, array $array) {
        return $this->tipTipoDocRepository->update($id, $array);
    }

    public function deleteTipTipoDoc($id) {
        return $this->tipTipoDocRepository->delete($id);
    }
}
