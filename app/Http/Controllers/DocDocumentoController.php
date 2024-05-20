<?php

namespace App\Http\Controllers;

use App\Models\DocDocumento;
use App\Http\Controllers\Controller;
use App\Services\DocDocumentoService;
use App\Services\ProProcesoService;
use App\Services\TipTipoDocService;
use Illuminate\Http\Request;
use Inertia\Inertia;

class DocDocumentoController extends Controller
{
    protected $docDocumentoService;
    protected $proProcesosService;
    protected $tipTipoDocService;

    public function __construct(DocDocumentoService $docDocumentoService, ProProcesoService $proProcesoService, TipTipoDocService $tipTipoDocService)
    {
        $this->docDocumentoService = $docDocumentoService;
        $this->proProcesosService = $proProcesoService;
        $this->tipTipoDocService = $tipTipoDocService;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $documentos = $this->docDocumentoService->getAllDocuments();

        return Inertia::render('Dashboard', ['documentos' => $documentos]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $proProcesos = $this->proProcesosService->getAllProProcesos();
        $tipTipoDoc = $this->tipTipoDocService->getAllTipTipoDoc();

        return Inertia::render('Documentos/Create', ["procesos" => $proProcesos, "tipodocumento" => $tipTipoDoc]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'doc_nombre' => ['required', 'max:60'],
            'doc_contenido' => ['required','max:4000'],
            'doc_id_proceso' => ['required'],
            'doc_id_tipo'
        ], [
            'required' => 'El :attribute es un campo requerido',
            'max:4000' => 'El :attribute tiene capacidad de 4000 caracteres',
            'max:60'   => 'El :attribute tiene capacidad de 60 caracteres'
        ]);

        $documento = $this->docDocumentoService->createDocumento($request->all());

        return redirect()->route('documento.edit', $documento->id);

    }

    /**
     * Display the specified resource.
     */
    public function show(DocDocumento $docDocumento)
    {
        return Inertia::render('Documentos/Show', compact('docDocumento'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(DocDocumento $docDocumento)
    {
        return Inertia::render('Documentos/Edit', compact('docDocumento'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, DocDocumento $docDocumento)
    {
        $request->validate([
            'doc_nombre' => ['required', 'max:60'],
            'doc_contenido' => ['required','max:4000']
        ], [
            'required' => 'El :attribute es un campo requerido',
            'max:4000' => 'El :attribute tiene capacidad de 4000 caracteres',
            'max:60'   => 'El :attribute tiene capacidad de 60 caracteres'
        ]);

        $this->docDocumentoService->updateDocumento($docDocumento->id, $request->all());

        return redirect()->route('dashboard');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(DocDocumento $docDocumento)
    {
        $this->docDocumentoService->deleteDocumento($docDocumento->id);
    }
}
