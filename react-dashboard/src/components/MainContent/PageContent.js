import React, { Component } from "react";
import PageHeader from "./PageHeader";
import InfoCard from "./InfoCard";
import LastProduct from "./LastProduct";
import CategoriesList from "./CategoriesList";
import { getProducts, getUsers } from "../../fetcher";

class PageContent extends Component {
    state = { lastProduct: null, products: [], sales: [], users: [] };
    async updateState() {
        console.log("updating state");
        const products = await getProducts();
        this.setState({
            products,
        });
        // const sales = await getSales();
        // this.setState({
        //     sales,
        // });
        const users = await getUsers();
        this.setState({
            users,
        });
    }
    componentDidMount() {
        this.updateState();
        this.stateInterval = setInterval(this.updateState.bind(this), 10 * 1000);
    }

    render() {
        const productAmount = this.state.products.length;
        const userAmount = this.state.users.length;
        return (
            <div className="container-fluid">
                <PageHeader />
                <div className="row">
                    <InfoCard
                        color="danger"
                        titulo="PRODUCTOS"
                        numero={productAmount}
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
                        numero={userAmount}
                        icono="far fa-user"
                    />
                </div>
                <div className="row">
                    <LastProduct />
                    <CategoriesList />
                </div>
            </div>
        );
    }
}

export default PageContent;
