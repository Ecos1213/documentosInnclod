import { forwardRef, useEffect, useRef } from 'react';

export default forwardRef(function TextAreaBox({ children, className = '', isFocused = false, ...props }, ref) {
    const textareabox = ref ? ref : useRef();

    useEffect(() => {
        if (isFocused) {
            select.current.focus();
        }
    }, []);

    return (
        <textarea
            {...props}
            className={
                'block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500' +
                className
            }
            ref={textareabox}
        >
            {children}
        </textarea>
    );
});
