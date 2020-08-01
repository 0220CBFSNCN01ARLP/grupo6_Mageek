import React from "react";
let ancho;

const Category = (props) => {
    props.dobleAncho ? (ancho = "col-lg-12 text-center") : (ancho = "col-lg-6");
    return (
        <div className={`${ancho} mb-4`}>
            <div className={`card bg-${props.color} text-white shadow`}>
                <div className="card-body">
                    {props.categoria}
                    <span className="float-right">|  {props.cantidad}</span>{" "}
                </div>
            </div>
        </div>
    );
};

export default Category;
