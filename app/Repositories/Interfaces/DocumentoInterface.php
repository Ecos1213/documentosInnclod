<?php

namespace App\Repositories\Interfaces;

interface DocumentoInterface
{
    public function getAll();
    public function delete($id);
}
