<?php

namespace App\Http\Controllers;

use App\Models\DocDocumento;
use App\Http\Controllers\Controller;
use App\Services\DocDocumentoService;
use App\Services\ProProcesoService;
use App\Services\TipTipoDocService;
use Illuminate\Database\Eloquent\ModelNotFoundException;
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
    public function index(Request $request)
    {

        $documentos = $this->docDocumentoService->getAllDocuments($request->q);
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
            'doc_nombre' => ['required', 'max:60', 'min:3'],
            'doc_contenido' => ['required','max:4000', 'min:3'],
            'doc_id_proceso' => ['required'],
            'doc_id_tipo' => ['required'],
            'proceso_prefijo' => ['required'],
            'tiptipodoc_prefijo' => ['required'],
        ], [
            'required' => 'Este es un campo requerido',
            'doc_contenido.max' => 'Este campo tiene capacidad de 4000 caracteres',
            'doc_nombre.max'   => 'Este campo tiene capacidad de 60 caracteres',
            'doc_contenido.min'      => 'Se debe escribir por lo menos 3 caracteres',
            'doc_nombre.min'      => 'Se debe escribir por lo menos 3 caracteres',
        ]);

        $array = [
            'doc_id_tipo' => $request->doc_id_tipo,
            'doc_id_proceso' => $request->doc_id_proceso,
            'doc_nombre' => $request->doc_nombre,
            //'doc_codigo' => $request->tiptipodoc_prefijo."-".$request->proceso_prefijo."-",
            'doc_contenido' => $request->doc_contenido,
        ];

        try{
            $documento = $this->docDocumentoService->createDocumento($array);
            return redirect()->route('documentos.show', $documento->id);
        }catch (ModelNotFoundException $e) {
            return response()->json(['error' => 'Proceso not found'], 404);
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(DocDocumento $documento)
    {
        $documento = $this->docDocumentoService->loadDocumento($documento);
        return Inertia::render('Documentos/Show', compact('documento'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(DocDocumento $documento)
    {
        $proProcesos = $this->proProcesosService->getAllProProcesos();
        $tipTipoDoc = $this->tipTipoDocService->getAllTipTipoDoc();
        $documento = $this->docDocumentoService->loadDocumento($documento);
        return Inertia::render('Documentos/Edit', compact('documento', 'proProcesos', 'tipTipoDoc'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, DocDocumento $documento)
    {

        $request->validate([
            'doc_nombre' => ['required', 'max:60', 'min:3'],
            'doc_contenido' => ['required','max:4000', 'min:3'],
            'doc_id_proceso' => ['required'],
            'doc_id_tipo' => ['required'],
            'proceso_prefijo' => ['required'],
            'tiptipodoc_prefijo' => ['required'],
        ], [
            'required' => 'Este es un campo requerido',
            'doc_contenido.max' => 'Este campo tiene capacidad de 4000 caracteres',
            'doc_nombre.max'   => 'Este campo tiene capacidad de 60 caracteres',
            'doc_contenido.min'      => 'Se debe escribir por lo menos 3 caracteres',
            'doc_nombre.min'      => 'Se debe escribir por lo menos 3 caracteres',
        ]);

        $array = [
            'doc_id_tipo' => $request->doc_id_tipo,
            'doc_id_proceso' => $request->doc_id_proceso,
            'doc_nombre' => $request->doc_nombre,
            // 'doc_codigo' => $request->tiptipodoc_prefijo."-".$request->proceso_prefijo."-",
            'doc_contenido' => $request->doc_contenido,
        ];

        $this->docDocumentoService->updateDocumento($documento->id, $array);

        return redirect()->route('dashboard');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(DocDocumento $documento)
    {
        $this->docDocumentoService->deleteDocumento($documento->id);
    }
}
