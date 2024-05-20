import React from "react";

const BodyFullCol = ({text}) => {
    return (
        <tr>
            <td colSpan="5" className="px-6 py-4">
                <p className="text-center">{text}</p>
            </td>
        </tr>

    );
}

export default BodyFullCol;
