import React from "react";
import PageHeader from "./PageHeader";
import InfoCard from "./InfoCard";
import LastProduct from "./LastProduct";
import CategoriesList from "./CategoriesList";

const PageContent = () => {
    return (
        <div className="container-fluid">
            <PageHeader />
            <div className="row">
                <InfoCard
                    color="danger"
                    titulo="PRODUCTOS"
                    numero="666"
                    icono="fas fa-carrot"
                />
                <InfoCard
                    color="success"
                    titulo="VENTAS"
                    numero="$3.666"
                    icono="fas fa-hand-holding-usd"
                />
                <InfoCard
                    color="info"
                    titulo="USUARIOS"
                    numero="333"
                    icono= "far fa-user"
                />
            </div>
            <div className="row">
                <LastProduct />
                <CategoriesList />
            </div>
        </div>
    );
};

export default PageContent;
