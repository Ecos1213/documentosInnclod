<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('doc_documentos', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger("doc_id_tipo");
            $table->unsignedBigInteger("doc_id_proceso");

            $table->foreign("doc_id_tipo")->references("id")->on("tip_tipo_docs");
            $table->foreign("doc_id_proceso")->references("id")->on("pro_procesos");

            $table->string("doc_nombre", 60);
            $table->string("doc_codigo")->unique();
            $table->string("doc_contenido", 4000);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('doc_documentos');
    }
};
