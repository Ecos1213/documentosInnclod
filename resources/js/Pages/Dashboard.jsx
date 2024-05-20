import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Head, usePage, router, useForm } from '@inertiajs/react';
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
    console.log(documentos);

    const { data, setData, get, reset } = useForm({
        q: usePage().props.filters?.q || ''  // Obtener el valor inicial del filtro desde las props con userPage
    });

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
                        <div className="relative overflow-x-auto shadow-md sm:rounded-lg">
                            <div className="flex flex-column sm:flex-row flex-wrap space-y-4 sm:space-y-0 items-center justify-between pb-4">
                                <div>
                                    <NewDocumentButton text="Nuevo Documento" url="documentos.create"/>
                                </div>
                                <div className="bg-white dark:bg-gray-900">
                                    <Search onChange={handleSearchChange} data={data.q} onSubmit={onSubmit} placeholder={"Busca tus documentos por nombre"}/>
                                </div>
                            </div>

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
                                            docs.map( data => {
                                                return (
                                                    <BodyRow key={data.id}>
                                                        <BodyTextBold text={data.doc_nombre} />
                                                        <BodyText text={data.doc_codigo} />
                                                        <BodyText text={data.proproceso.pro_nombre} />
                                                        <BodyText text={data.tiptipodoc.tip_nombre} />
                                                        <BodyLinkText text={'Ver'} url={'documentos.show'} param={data.id}/>
                                                        <BodyLinkText text={'Modificar'} url={'documentos.show'} param={data.id}/>
                                                        <BodyLinkText text={'Borrar'} url={'documentos.show'} param={data.id}/>
                                                    </BodyRow>
                                                );
                                            }) : <BodyFullCol text={"No se encontró información"} />
                                    }
                                </BodyTable>
                            </TableGrid>
                        </div>
                        <div className="flex p-4 justify-end">
                            <Pagination links={documentos.links} handlePageChange={handlePageChange} />
                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
