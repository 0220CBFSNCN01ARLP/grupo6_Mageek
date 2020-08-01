import React, { Component } from "react";
import Product from "../Product";
import {getLastProduct} from "../../fetcher"
class LastProduct extends Component {
    state = { product: "null" };
    async updateState() {
        console.log("Updating state...");
        const product = await getLastProduct();
        this.setState({
            product,
        });
    }
    componentDidMount() {
        this.updateState();
        this.stateInterval = setInterval(this.updateState.bind(this), 10 * 1000);
    }
    render() {
        let productDescription = this.state.product.descripcion;
        let productDetail = this.state.product.detail;
        let lastProductImg = this.state.product.arrayImagenes;
        return (
            <div className="col-lg-6 mb-4">
                <div className="card shadow mb-4">
                    <div className="card-header py-3">
                        <h6 className="m-0 font-weight-bold text-primary">
                            Último producto cargado en la base de datos
                        </h6>
                    </div>
                    <Product description={productDescription} detail={productDetail} imageURL={lastProductImg} />
                </div>
            </div>
        );
    }
}

export default LastProduct;
