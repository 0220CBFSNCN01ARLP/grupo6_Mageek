import React from "react";


const TopbarProfileMenu = (props) => {
    return (
        <li className="nav-item dropdown no-arrow">
            <a className="nav-link dropdown-toggle" href="/" id="userDropdown">
                <span className="mr-2 d-none d-lg-inline text-gray-600 small">
                    {props.nombreUsuario}
                </span>
                <img
                    className="img-profile rounded-circle"
                    src={`${props.URLIconoUsuario}`}
                    width="60"
                    alt=""
                />
            </a>
        </li>
    );
};

export default TopbarProfileMenu;
