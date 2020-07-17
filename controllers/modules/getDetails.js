const {
    Blisters,
    Cartas,
    Categorias,
    Dados,
    Folios,
    Fotos,
    Productos,
    Packs,
} = require("../../database/models");

const getDetails = async function getDetails(product) {
    switch (product.categorias.categoria) {
        case "blister":
            detalle = await Blisters.findOne({
                where: {
                    id_producto: product.id,
                },
            });
            break;

        case "carta":
            detalle = await Cartas.findOne({
                where: {
                    id_producto: product.id,
                },
            });
            break;

        case "dado":
            detalle = await Dados.findOne({
                where: {
                    id_producto: product.id,
                },
            });
            break;

        case "folio":
            detalle = await Folios.findOne({
                where: {
                    id_producto: product.id,
                },
            });
            break;

        case "pack":
            detalle = await Packs.findOne({
                where: {
                    id_producto: product.id,
                },
            });
            break;
    }
}
module.exports = getDetails;