import { forwardRef, useEffect, useRef } from 'react';

export default forwardRef(function OptionSelect({ children, className = '', isFocused = false, ...props }, ref) {
    const optionRef = ref ? ref : useRef();

    useEffect(() => {
        if (isFocused) {
            select.current.focus();
        }
    }, []);

    return (
        <option
            {...props}
            className={
                'border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 rounded-md shadow-sm ' +
                className
            }
            ref={optionRef}
        >
            {children}
        </option>
    );
});
