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


export default function Create({ auth }) {

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


                        </div>
                    </div>
                </div>
            </div>
        </AuthenticatedLayout>
    );
}
