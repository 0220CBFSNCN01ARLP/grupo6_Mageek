import React from "react";

import dummyProductImg from "../assets/images/product_dummy.svg";

const Product = (props) => {
    let productURL = `http://${props.detail}`
    let image = `http://localhost:3000/img/product/${props.imageURL}`;
    return (
        <div className="card-body">
            <div className="text-center">
                <img
                    className="img-fluid px-3 px-sm-4 mt-3 mb-4"
                    style={{ width: "20rem" }}
                    src={image}
                    alt=""
                />
            </div>
            <p>{props.description}{image}</p>
            <a target="_blank" rel="nofollow" href={productURL}>
                Detalle del producto
            </a>
        </div>
    );
};

export default Product;
