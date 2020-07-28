import React from "react";
import Category from "../Category";

const CategoriesList = () => {
    return (
        <div className="col-lg-6 mb-4">
            <div className="card shadow mb-4">
                <div className="card-header py-3">
                    <h6 className="m-0 font-weight-bold text-primary">
                        Categorías en la base de datos
                    </h6>
                </div>
                <div className="card-body">
                    <div className="row">
                        <Category categoria="Blisters" color="info" />
                        <Category categoria="Dados" color="dark" />
                        <Category categoria="Folios" color="danger" />
                        <Category categoria="Packs" color="success" />
                        <Category categoria="Cartas" color="primary" dobleAncho />
                    </div>
                </div>
            </div>
        </div>
    );
};

export default CategoriesList;
