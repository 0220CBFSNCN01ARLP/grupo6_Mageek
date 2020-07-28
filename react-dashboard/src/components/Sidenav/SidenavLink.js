import React from "react";

export default function SidenavLink(props) {
    const { label, icon, link } = props;

    function isActive(link) {
        return window.location.pathname.startsWith(link);
    };
    const activeClass = isActive(link) ? "active" : "";

    return (
        <li className={`nav-item ${activeClass}`}>
            <a className="nav-link" href={link}>
                <i className={`fas fa-fw ${icon}`}></i>
                <span>{label}</span>
            </a>
        </li>
    );
}
