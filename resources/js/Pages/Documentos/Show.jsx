import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Head, usePage, router, useForm, Link } from '@inertiajs/react';
import { useState, useEffect } from 'react';


export default function Create({ auth, documento }) {
    return (
        <AuthenticatedLayout
            user={auth.user}
            header={<h2 className="font-semibold text-xl text-gray-800 leading-tight">Dashboard</h2>}
        >
            <Head title="Dashboard" />

            <div className="py-12">
                <div className="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div className="overflow-hidden shadow-sm sm:rounded-lg">
                        <div className="relative overflow-x-auto shadow-md sm:rounded-lg max-sm:px-4">
                            <div className='mt-4 p-4 rounded-lg'>
                                <Link href={route("documentos.edit", documento.id)} className="font-medium text-blue-600 dark:text-blue-500 hover:underline">Editar</Link>
                            </div>
                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Nombre de documento</h2>
                                <p className='font-medium text-gray-900 dark:text-white'>{documento.doc_nombre}</p>
                            </div>

                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Cotenido de documento</h2>
                                <p className='font-medium text-gray-900 dark:text-white overflow-auto max-h-72 relative '>{documento.doc_contenido}</p>
                            </div>

                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Codigo de documento</h2>
                                <p className='font-medium text-gray-900 whitespace-nowrap dark:text-white'>{documento.doc_codigo}</p>
                            </div>
                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Nombre de proceso documento</h2>
                                <p className='font-medium text-gray-900 dark:text-white'>{documento.proproceso.pro_nombre}</p>
                            </div>

                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Tipo de documento</h2>
                                <p className='font-medium text-gray-900 dark:text-white'>{documento.tiptipodoc.tip_nombre}</p>
                            </div>

                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Prefijo de proceso documento</h2>
                                <p className='font-medium text-gray-900 dark:text-white'>{documento.proproceso.pro_prefijo}</p>
                            </div>

                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Tipo de documento</h2>
                                <p className='font-medium text-gray-900 dark:text-white'>{documento.tiptipodoc.tip_nombre}</p>
                            </div>

                            <div className='mt-4 p-4 border-solid border-2 border-indigo-500/50 rounded-lg'>
                                <h2 className='font-black'>Prefijo de tipo de documento</h2>
                                <p className='font-medium text-gray-900 dark:text-white'>{documento.tiptipodoc.tip_prefijo}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
