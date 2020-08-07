import React, { Component } from "react";
import Product from "../Product";
import { getLastProduct } from "../../fetcher";
class LastProduct extends Component {
    state = { product: "null", lastImage: "" };
    async updateState() {
        console.log("Updating state...");
        const product = await getLastProduct();
        const [lastImage] = product.pic.splice(-1);
        this.setState({
            product,
            lastImage
        });
    }
    componentDidMount() {
        this.updateState();
        this.stateInterval = setInterval(this.updateState.bind(this), 10 * 1000);
    }
    render() {
        let productName = this.state.product.nombre;
        let productDescription = this.state.product.descripcion;
        let productDetail = this.state.product.detail;
        console.log(this.state.lastImage);
        let lastProductImg = this.state.lastImage;
        return (
            <div className="col-lg-6 mb-4">
                <div className="card shadow mb-4">
                    <div className="card-header py-3">
                        <h6 className="m-0 font-weight-bold text-primary">
                            Último producto cargado en la base de datos
                        </h6>
                    </div>
                    <Product
                        name={productName}
                        description={productDescription}
                        detail={productDetail}
                        imageURL={lastProductImg}
                    />
                </div>
            </div>
        );
    }
}

export default LastProduct;
