import React from "react";

export default function Header() {
    return (
        <nav class="navbar navbar-expand-lg navbar-dark info-color">
            <a class="navbar-brand" href="/">
                <img src="/img/logo.png" alt="logo" id="logo" />{" "}
            </a>
            <button
                class="navbar-toggler"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link waves-effect waves-light" href="/products">
                            Products<span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link waves-effect waves-light" href="footer">
                            About Us
                        </a>
                    </li>
                    <li class="nav-item dropdown" id="unloggedMenu">
                        <a
                            class="nav-link dropdown-toggle waves-effect waves-light"
                            id="navbarDropdownMenuLink"
                            data-toggle="dropdown"
                            href="/user"
                            aria-haspopup="true"
                            aria-expanded="false"
                        >
                            Users
                        </a>
                        <div
                            class="dropdown-menu dropdown-info"
                            aria-labelledby="navbarDropdownMenuLink"
                        >
                            <a class="dropdown-item waves-effect waves-light" href="/user/login">
                                login
                            </a>
                            <a class="dropdown-item waves-effect waves-light" href="/user/register">
                                sign up
                            </a>
                        </div>
                    </li>
                    <li class="nav-item dropdown" id="loggedMenu">
                        <a
                            class="nav-link dropdown-toggle waves-effect waves-light"
                            id="navbarDropdownMenuLink"
                            data-toggle="dropdown"
                            href="/user"
                            aria-haspopup="true"
                            aria-expanded="false"
                        >
                            User
                        </a>
                        <div
                            class="dropdown-menu dropdown-info"
                            aria-labelledby="navbarDropdownMenuLink"
                        >
                            <a class="dropdown-item waves-effect waves-light" href="/user/account">
                                account
                            </a>
                            <a class="dropdown-item waves-effect waves-light" href="/product/create">
                                add product
                            </a>
                            <a class="dropdown-item waves-effect waves-light" href="/user/register">
                                sign up
                            </a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link waves-effect waves-light" href="/cart">
                            <i class="fa fa-shopping-cart"></i>
                        </a>
                    </li>
                </ul>
                <form class="form-inline">
                    <div class="md-form my-0">
                        <input
                            class="form-control mr-sm-2"
                            type="text"
                            placeholder="Search"
                            aria-label="Search"
                        />
                        <button type="button" class="btn btn-success btn-rounded">
                            Success
                        </button>
                    </div>
                </form>
            </div>
        </nav>
    );
}