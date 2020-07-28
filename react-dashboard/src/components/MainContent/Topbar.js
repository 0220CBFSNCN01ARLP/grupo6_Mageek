import React from "react";

import TopbarItem from "./TopbarItem";
import TopbarDivider from "./TopbarDivider";
import TopbarProfileMenu from "./TopbarProfileMenu";

const Topbar = () => {
    return (
        <nav className="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <button id="sidebarToggleTop" className="btn btn-link d-md-none rounded-circle mr-3">
                <i className="fa fa-bars"></i>
            </button>

            <ul className="navbar-nav ml-auto">
                <TopbarItem contadorIcono="1" icono="fas fa-bell fa-fw" />
                <TopbarItem contadorIcono="2+" icono="far fa-comment-dots" />
                <TopbarItem contadorIcono="-1" icono="fas fa-user-alt-slash" />
                <TopbarDivider />
                <TopbarProfileMenu
                    URLIconoUsuario="https://www.w3schools.com/images/lamp.jpg"
                    nombreUsuario="Franco"
                />
            </ul>
        </nav>
    );
};

export default Topbar;
