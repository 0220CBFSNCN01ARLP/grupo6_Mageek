const {
    Artes,
    Blisters,
    Cartas,
    Categorias,
    Colores,
    Dados,
    Ediciones,
    Folios,
    Fotos,
    Productos,
    Packs,
    Tipos,
} = require("../../database/models");
const { response } = require("../../app");

const categoryDataService = {
    getDetails : async function (product, res=response) {
        let detalle;
        switch (product.dataValues.categorias.dataValues.categoria) {
            case "blister":
                detalle = await Blisters.findOne({
                    where: { id_producto: product.id },
                    include: [{ model: Ediciones, as: "ediciones" }],
                });
                return detalle;

            case "carta":
                detalle = await Cartas.findOne({
                    where: { id_producto: product.id },
                    include: [
                        { model: Artes, as: "artes" },
                        { model: Colores, as: "colores" },
                        { model: Ediciones, as: "ediciones" },
                        { model: Tipos, as: "tipos" },
                    ],
                });
                return detalle;

            case "dado":
                detalle = await Dados.findOne({
                    where: { id_producto: product.id },
                });
                return detalle;

            case "folio":
                detalle = await Folios.findOne({
                    where: { id_producto: product.id },
                });
                return detalle;

            case "pack":
                detalle = await Packs.findOne({
                    where: { id_producto: product.id },
                    include: [
                        { model: Ediciones, as: "ediciones" },
                        { model: Colores, as: "colores" },
                    ],
                });
                return detalle;

            default:
                res.send(product);
        }
    },
    saveDetails : async function (product, details) {
        let detalle = {};
        switch (product.dataValues.categorias.dataValues.categoria) {
            case "blister":
                detalle = await Blisters.findOne({
                    where: { id_producto: product.id },
                    include: [{ model: Ediciones, as: "ediciones" }],
                });
                return detalle;

            case "carta":
                detalle = await Cartas.findOne({
                    where: { id_producto: product.id },
                    include: [
                        { model: Artes, as: "artes" },
                        { model: Colores, as: "colores" },
                        { model: Ediciones, as: "ediciones" },
                        { model: Tipos, as: "tipos" },
                    ],
                }); // should implement req.body somewhere??
                for (let campo in details.dataValues) {
                    detalle.dataValues[campo] = details.dataValues[campo];
                };
                detalle.dataValues.id_color = product.dataValues.color;
                detalle.updated_at = new Date();
                console.log("detalle en categoryDataService");
                console.log(detalle.dataValues);
                try {
                    // await detalle.save();
                } catch (err) {
                    res.send(error);
                }
                break;

            case "dado":
                detalle = await Dados.findOne({
                    where: { id_producto: product.id },
                });
                return detalle;

            case "folio":
                detalle = await Folios.findOne({
                    where: { id_producto: product.id },
                });
                return detalle;

            case "pack":
                detalle = await Packs.findOne({
                    where: { id_producto: product.id },
                    include: [
                        { model: Ediciones, as: "ediciones" },
                        { model: Colores, as: "colores" },
                    ],
                });
                return detalle;

            default:
                res.send(product);
        }
    }
}


module.exports = categoryDataService;
