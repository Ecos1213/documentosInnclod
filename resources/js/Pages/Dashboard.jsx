import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Head, usePage, router, useForm, Link } from '@inertiajs/react';
import { useState, useEffect } from 'react';

//Button new documento
import NewDocumentButton from '@/Components/NewDocumentButton';

// table component
import TableGrid from '@/Components/Table/TableGrid';
import HeaderTable from '@/Components/Table/HeaderTable';
import HeaderRow from '@/Components/Table/HeaderRow';
import HeaderTitle from '@/Components/Table/HeaderTitle';
import BodyTable from '@/Components/Table/BodyTable';
import BodyRow from '@/Components/Table/BodyRow';
import BodyTextBold from '@/Components/Table/BodyTextBold';
import BodyText from '@/Components/Table/BodyText';
import BodyLinkText from '@/Components/Table/BodyLinkText';
import BodyFullCol from '@/Components/Table/BodyFullCol';
import Pagination from '@/Components/Table/Pagination';

//search
import Search from '@/Components/Search/Search';


export default function Dashboard({ auth }) {

    const { documentos } = usePage().props;
    const [docs, setDocs] = useState(documentos.data);
    // const initialSearch = new URLSearchParams(window.location.search).get('q') || '';
    // const [search, setSearch] = useState(initialSearch);

    const { data, setData, get, reset } = useForm({
        q: usePage().props.filters?.q || ''  // Obtener el valor inicial del filtro desde las props con userPage
    });

    const { delete: destroy, processing } = useForm();

    const handlePageChange = (page) => {
        get(page, {preserveState:true, preserveScroll:true});
    }

    const handleSearchChange = (e) => {
        // setSearch(e.target.value);
        setData(data => ({ ...data, 'q': e.target.value}));
    }

    const onSubmit = (e) => {
        e.preventDefault();
        //router.get(route('dashboard', {q: search}, {preserveState:true, preserveScroll:true}));
        get(route('dashboard'), {preserveState:true, preserveScroll:true});
    }

    const destroyDocumento = (id) => {
        if(confirm('¿Desea Eliminar?')) {
            destroy(route('documentos.destroy', id), {
                onSuccess: () => {
                    alert('Documento eliminado correctamente');
                },
                onError: (errors) => {
                    console.error(errors);
                },
                preserveScroll: true,
            });
        }
    };

    useEffect(() => {
        setDocs(documentos.data);
    }, [documentos]);

    return (
        <AuthenticatedLayout
            user={auth.user}
            header={<h2 className="font-semibold text-xl text-gray-800 leading-tight">Dashboard</h2>}
        >
            <Head title="Dashboard" />

            <div className="py-12">
                <div className="max-w-7xl mx-auto sm:px-6 lg:px-8">
                    <div className="overflow-hidden shadow-sm sm:rounded-lg">
                        <div className="flex flex-column sm:flex-row max-sm:flex-col flex-wrap sm:space-y-0 items-center justify-between pb-4">
                            <div className='max-sm:w-full max-sm:p-4'>
                                <NewDocumentButton text="Nuevo Documento" url="documentos.create"/>
                            </div>
                            <div className="bg-white dark:bg-gray-900 max-sm:w-full max-sm:px-4">
                                <Search onChange={handleSearchChange} data={data.q} onSubmit={onSubmit} placeholder={"Busca tus documentos por nombre"}/>
                            </div>
                        </div>
                        <div className="relative overflow-x-auto shadow-md sm:rounded-lg max-sm:mx-4">

                            <TableGrid>
                                <HeaderTable>
                                    <HeaderRow>
                                        <HeaderTitle title={"Nombre Documento"} />
                                        <HeaderTitle title={"Codigo Documento"} />
                                        <HeaderTitle title={"Proceso Nombre"} />
                                        <HeaderTitle title={"Tipo Documento"} />
                                        <HeaderTitle title={"Accion"} colspan={3}/>
                                    </HeaderRow>
                                </HeaderTable>

                                <BodyTable>
                                    {
                                        docs.length > 0 ?
                                        docs.map( docDocumento => {
                                                return (
                                                    <BodyRow key={docDocumento.id}>
                                                        <BodyTextBold text={docDocumento.doc_nombre} />
                                                        {/* <BodyText text={`${docDocumento.tiptipodoc.tip_prefijo}-${docDocumento.proproceso.pro_prefijo}-${docDocumento.doc_codigo}`} /> */}
                                                        <BodyText text={`${docDocumento.doc_codigo}`} />
                                                        <BodyText text={docDocumento.proproceso.pro_nombre} />
                                                        <BodyText text={docDocumento.tiptipodoc.tip_nombre} />
                                                        <BodyLinkText text={'Ver'} url={'documentos.show'} param={docDocumento.id}/>
                                                        <BodyLinkText text={'Modificar'} url={'documentos.edit'} param={docDocumento.id}/>
                                                        <td className="px-6 py-4">
                                                            <a href="#" onClick={() => destroyDocumento(docDocumento.id)} className="font-medium text-red-600 dark:text-red-500 hover:underline"> Borrar </a>
                                                        </td>

                                                    </BodyRow>
                                                );
                                            }) : <BodyFullCol text={"No se encontró información"} />
                                    }
                                </BodyTable>
                            </TableGrid>
                        </div>
                        <div className="flex p-4 sm:justify-end max-sm:justify-center">
                            <Pagination links={documentos.links} handlePageChange={handlePageChange} />
                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
