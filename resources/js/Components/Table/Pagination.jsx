import React from "react";

const Pagination = ({links, handlePageChange}) => {
    return (
        <>
            {links.map((link, index) => (
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
        </>

    );
}


export default Pagination;
