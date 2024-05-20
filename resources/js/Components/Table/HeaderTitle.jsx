import React from "react";

const HeaderTitle = ({title, colspan = 1}) => {
    return (
        <th scope="col" colSpan={colspan} className="px-6 py-3 text-center">
            {title}
        </th>
    );
}


export default HeaderTitle;
