<?php

namespace App\Providers;

use App\Repositories\DocDocumentoRepository;
use App\Repositories\Interfaces\DocDocumentoRepositoryInterface;
use App\Repositories\Interfaces\ProProcesoRepositoryInterface;
use App\Repositories\Interfaces\TipTipoDocRepositoryInterface;
use App\Repositories\ProProcesoRepository;
use App\Repositories\TipTipoDocRepository;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //inyectamos 
        $this->app->bind(
            //interface y repository de proproceso
            ProProcesoRepositoryInterface::class,
            ProProcesoRepository::class
        );

        $this->app->bind(
            //interface y repository de docdocumento
            DocDocumentoRepositoryInterface::class,
            DocDocumentoRepository::class
        );

        $this->app->bind(
            //interface y repository de TipTipoDoc
            TipTipoDocRepositoryInterface::class,
            TipTipoDocRepository::class
        );
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        //
    }
}
