import React from "react";

const TopbarItem = (props) => {
    return (
        <li className="nav-item dropdown no-arrow mx-1">
            <a
                className="nav-link dropdown-toggle"
                href="/"
                id="alertsDropdown"
            >
                <i className={`${props.icono}`}> </i>
                <span className="badge badge-danger badge-counter">{props.contadorIcono}</span>
            </a>
        </li>
    );
};

export default TopbarItem;
