import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Head, Link, usePage, router } from '@inertiajs/react';
import { useState } from 'react';

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

//search
import Search from '@/Components/Search/Search';


export default function Dashboard({ auth }) {
    /*console.log(documentos[0].doc_codigo);
    console.log(documentos[0].doc_contenido);
    console.log(documentos[0].doc_id_proceso);
    console.log(documentos[0].doc_id_tipo);
    console.log(documentos[0].proproceso.id);
    console.log(documentos[0].proproceso.pro_prefijo);
    console.log(documentos[0].proproceso.pro_nombre);
    console.log(documentos[0].tiptipodoc.id);
    console.log(documentos[0].tiptipodoc.tip_nombre);
    console.log(documentos[0].tiptipodoc.tip_prefijo);*/

    const { documentos } = usePage().props;
    const [docs, setDocs] = useState(documentos.data);
    console.log(documentos.links);

    const handlePageChange = (page) => {
        router.get(page);
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
                            <div className="flex flex-column sm:flex-row flex-wrap space-y-4 sm:space-y-0 items-center justify-between pb-4">
                                <div>
                                    <Link href={route("register")}>
                                        <button type="button" className="text-blue-700 hover:text-white border border-blue-700
                                                                        hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300
                                                                        font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 dark:border-blue-500
                                                                        dark:text-blue-500 dark:hover:text-white dark:hover:bg-blue-500 dark:focus:ring-blue-800">
                                            Crear Documento
                                        </button>
                                    </Link>
                                </div>
                                <div className="bg-white dark:bg-gray-900">
                                    <Search />
                                </div>
                            </div>

                            <TableGrid>
                                <HeaderTable>
                                    <HeaderRow>
                                        <HeaderTitle title={"Nombre Documento"} />
                                        <HeaderTitle title={"Codigo Documento"} />
                                        <HeaderTitle title={"Proceso Nombre"} />
                                        <HeaderTitle title={"Tipo Documento"} />
                                        <HeaderTitle title={"Accion"} />
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
                                                    </BodyRow>
                                                );
                                            }) : <BodyFullCol text={"No se encontró información"} />
                                    }
                                </BodyTable>
                            </TableGrid>
                        </div>
                        <div className="flex p-4 justify-end">
                            {documentos.links.map((link, index) => (
                                <button
                                    aria-current="page"
                                    className={
                                        link.active ?
                                        'flex items-center justify-center px-3 h-8 text-sm font-medium text-blue-600 border border-blue-300 bg-blue-50 hover:bg-blue-100 hover:text-blue-700 rounded-lg':
                                        'flex items-center justify-center px-3 h-8 text-sm font-medium text-gray-500 bg-white border border-gray-300 rounded-lg hover:bg-gray-100 hover:text-gray-700 dark:bg-gray-800 dark:border-gray-700 dark:text-gray-400 dark:hover:bg-gray-700 dark:hover:text-white'

                                    }
                                    key={index}
                                    onClick={() => handlePageChange(link.url)}
                                    disabled={link.active}
                                    dangerouslySetInnerHTML={{ __html: link.label }}
                                />
                            ))}
                        </div>

                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
