<?php

namespace App\Services;

use App\Repositories\Interfaces\DocDocumentoRepositoryInterface;

class DocDocumentoService
{
    protected $docDocumentoRepository;
    /**
     * Create a new class instance.
     */
    public function __construct(DocDocumentoRepositoryInterface $docDocumentoRepository) {
        $this->docDocumentoRepository = $docDocumentoRepository;
    }

    public function getAllDocuments($docNombre = "") {
        return $this->docDocumentoRepository->getAll($docNombre);
    }

    public function getDocumentById($id) {
        return $this->docDocumentoRepository->getById($id);
    }

    public function createDocumento(array $data) {
        return $this->docDocumentoRepository->create($data);
    }

    public function updateDocumento($id, array $data) {
        return $this->docDocumentoRepository->update($id, $data);
    }

    public function deleteDocumento($id) {
        return $this->docDocumentoRepository->delete($id);
    }
}
