import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout';
import { Head, Link } from '@inertiajs/react';

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

//search
import Search from '@/Components/Search/Search';

export default function Dashboard({ auth }) {
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
                                        <HeaderTitle title={"Product name"} />
                                        <HeaderTitle title={"Color"} />
                                        <HeaderTitle title={"Category"} />
                                        <HeaderTitle title={"Price"} />
                                        <HeaderTitle title={"Accion"} />
                                    </HeaderRow>
                                </HeaderTable>

                                <BodyTable>
                                    <BodyRow>
                                        <BodyTextBold text={'Apple MacBook Pro 17"'} />
                                        <BodyText text={'Silver'} />
                                        <BodyText text={'Laptop'} />
                                        <BodyText text={'$2999'} />
                                        <BodyLinkText text={'Edit'} url={'register'} />
                                    </BodyRow>
                                    <BodyRow>
                                        <BodyTextBold text={'Microsoft Surface Pro'} />
                                        <BodyText text={'White'} />
                                        <BodyText text={'Laptop PC'} />
                                        <BodyText text={'$1999'} />
                                        <BodyLinkText text={'Edit'} url={'register'} />
                                    </BodyRow>
                                    <BodyRow>
                                        <BodyTextBold text={'Magic Mouse 2'} />
                                        <BodyText text={'Black'} />
                                        <BodyText text={'Accessories'} />
                                        <BodyText text={'$99'} />
                                        <BodyLinkText text={'Edit'} url={'register'} />
                                    </BodyRow>
                                    <BodyRow>
                                        <BodyTextBold text={'Apple MacBook Pro 17"'} />
                                        <BodyText text={'Silver'} />
                                        <BodyText text={'Laptop'} />
                                        <BodyText text={'$2999'} />
                                        <BodyLinkText text={'Edit'} url={'register'} />
                                    </BodyRow>
                                    <BodyRow>
                                        <BodyTextBold text={'Magic Mouse 2'} />
                                        <BodyText text={'Black'} />
                                        <BodyText text={'Accessories'} />
                                        <BodyText text={'$99'} />
                                        <BodyLinkText text={'Edit'} url={'register'} />
                                    </BodyRow>
                                    <BodyRow>
                                        <BodyTextBold text={'Apple MacBook Pro 17"'} />
                                        <BodyText text={'Silver'} />
                                        <BodyText text={'Laptop'} />
                                        <BodyText text={'$2999'} />
                                        <BodyLinkText text={'Edit'} url={'register'} />
                                    </BodyRow>
                                </BodyTable>
                            </TableGrid>
                        </div>

                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
