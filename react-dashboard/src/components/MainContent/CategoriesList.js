import React, { Component } from "react";
import Category from "../Category";
import { getCategoryAmounts } from "../../fetcher";

class CategoriesList extends Component {
    state = { amounts : {} }
    async updateState() {
        console.log("updating state");
        const amounts = await getCategoryAmounts();
        this.setState({
            amounts,
        });
    }
    componentDidMount() {
        this.updateState();
        this.stateInterval = setInterval(this.updateState.bind(this), 10 * 1000);
    }

    render() {
        let amounts = this.state.amounts;
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
                            <Category categoria="Blisters" color="info" cantidad={amounts.blister} />
                            <Category categoria="Dados" color="dark" cantidad={amounts.dado} />
                            <Category categoria="Folios" color="danger" cantidad={amounts.folio} />
                            <Category categoria="Packs" color="success" cantidad={amounts.pack} />
                            <Category categoria="Cartas" color="primary" dobleAncho cantidad={amounts.carta} />
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default CategoriesList;
