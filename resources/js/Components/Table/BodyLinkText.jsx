import React from "react";
import { Link } from '@inertiajs/react';

const BodyLinkText = ({text, url, param = ""}) => {
    return (
        <td className="px-6 py-4">
            <Link href={route(url, param)} className="font-medium text-blue-600 dark:text-blue-500 hover:underline">{text}</Link>
        </td>
    );
}


export default BodyLinkText;

