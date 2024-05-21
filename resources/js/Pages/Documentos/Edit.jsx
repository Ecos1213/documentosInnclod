import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Head, usePage, router, useForm } from '@inertiajs/react';
import { useState, useEffect } from 'react';

import InputError from '@/Components/InputError';
import InputLabel from '@/Components/InputLabel';
import PrimaryButton from '@/Components/PrimaryButton';
import TextInput from '@/Components/TextInput';
import SelectBox from '@/Components/SelectBox';
import OptionSelect from '@/Components/OptionSelect';
import TextAreaBox from '@/Components/TextAreaBox';

export default function Edit({ auth, proProcesos, tipTipoDoc, documento }) {

    //console.log(documento);

    const {data, setData, put, processing, errors, reset} = useForm({
        doc_nombre: documento.doc_nombre,
        doc_id_proceso: documento.doc_id_proceso,
        doc_id_tipo: documento.doc_id_tipo,
        proceso_prefijo: documento.proproceso.pro_prefijo,
        tiptipodoc_prefijo: documento.tiptipodoc.tip_prefijo,
        doc_contenido: documento.doc_contenido,
    });

    const [process, setProcess] = useState(proProcesos);
    const [typeDoc, setTypeDoc] = useState(tipTipoDoc);

    const handleOnSubmit = (e) => {
        e.preventDefault();
        put(route('documentos.update', documento.id), data);
    }

    const handleChangeIdProceso = (e) => {
        if(e.target.value){
            setData(data => ({...data, 'doc_id_proceso': e.target.value}));
            let prefix = process.find((procesoDocumentos) => procesoDocumentos.id == e.target.value);
            setData(data => ({...data, 'proceso_prefijo': prefix.pro_prefijo}));
        }else {
            setData(data => ({...data, 'doc_id_proceso': ""}));
            setData(data => ({...data, 'proceso_prefijo': ""}));
        }
    }

    const handleChangeTipTipoDoc = (e) => {
        console.log(e.target.value);
        if(e.target.value) {
            setData(data => ({...data, 'doc_id_tipo': e.target.value}));
            let prefix = typeDoc.find((typeDocumentos) => typeDocumentos.id == e.target.value);
            setData(data => ({...data, 'tiptipodoc_prefijo': prefix.tip_prefijo}));
        } else {
            setData(data => ({...data, 'doc_id_tipo': ""}));
            setData(data => ({...data, 'tiptipodoc_prefijo': ""}));
        }

    }

    return (
        <AuthenticatedLayout
            user={auth.user}
            header={<h2 className="font-semibold text-xl text-gray-800 leading-tight">Dashboard</h2>}
        >
            <Head title="Dashboard" />

            <div className="py-12">
                <div className="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div className="overflow-hidden shadow-sm sm:rounded-lg">
                        <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
                            <form onSubmit={handleOnSubmit}>
                                <div>
                                    <InputLabel htmlFor="doc_nombre" value="Nombre del documento" />

                                    <TextInput
                                        id="doc_nombre"
                                        name="doc_nombre"
                                        value={data.doc_nombre}
                                        className="mt-1 block w-full"
                                        autoComplete="name"
                                        isFocused={true}
                                        onChange={(e) => setData('doc_nombre', e.target.value)}
                                        required
                                    />

                                    <InputError message={errors.doc_nombre} className="mt-2" />
                                </div>

                                <div className='mt-4'>
                                    <InputLabel htmlFor="doc_id_tipo" value="Tipo de documento" />
                                    <SelectBox
                                        name="doc_id_tipo"
                                        id="doc_id_tipo"
                                        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        onChange={handleChangeTipTipoDoc}
                                        value={data.doc_id_tipo}
                                        >
                                        <OptionSelect value="">Elige un tipo de documento.</OptionSelect>
                                        {
                                            typeDoc ? typeDoc.map( docTip => <OptionSelect key={docTip.id} value={docTip.id}>{`${docTip.tip_nombre} (${docTip.tip_prefijo})`}</OptionSelect>):
                                            ""
                                        }
                                    </SelectBox>
                                    <TextInput
                                        id="tiptipodoc_prefijo"
                                        type="hidden"
                                        name="tiptipodoc_prefijo"
                                        value={data.proceso_prefijo}
                                        className="mt-1 block w-full"
                                        onChange={(e) => setData('tiptipodoc_prefijo', e.target.value)}
                                        required
                                    />
                                    <InputError message={errors.doc_id_tipo} className="mt-2" />
                                </div>

                                <div className='mt-4'>
                                    <InputLabel htmlFor="doc_id_proceso" value="Proceso" />
                                    <SelectBox
                                        name="doc_id_proceso"
                                        id="doc_id_proceso"
                                        className="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                                        onChange={handleChangeIdProceso}
                                        value={data.doc_id_proceso}
                                        required >
                                        <OptionSelect value="">Elija un proceso de documento.</OptionSelect>
                                        {
                                            process ? process.map( data => <OptionSelect key={data.id} value={data.id}>{`${data.pro_nombre} (${data.pro_prefijo})`}</OptionSelect>):
                                            ""
                                        }
                                    </SelectBox>
                                    <InputError message={errors.doc_id_proceso} className="mt-2" />
                                    <TextInput
                                        id="proceso_prefijo"
                                        type="hidden"
                                        name="proceso_prefijo"
                                        value={data.proceso_prefijo}
                                        className="mt-1 block w-full"
                                        onChange={(e) => setData('proceso_prefijo', e.target.value)}
                                        required
                                    />
                                </div>

                                <div className='mt-4'>
                                    <InputLabel htmlFor="doc_contenido" value="Contenido del documento" />
                                    <TextAreaBox defaultValue={data.doc_contenido} onChange={(e) => setData('doc_contenido', e.target.value)} rows="6" id="doc_contenido" name="doc_contenido" maxLength="4000" placeholder="Escribe el contenido del documento....">
                                    </TextAreaBox>
                                    <InputError message={errors.doc_contenido} className="mt-2" />
                                </div>


                                <div className="flex items-center justify-end mt-4">
                                    <PrimaryButton className="ms-4" disabled={processing}>
                                        Modificar Documento
                                    </PrimaryButton>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
