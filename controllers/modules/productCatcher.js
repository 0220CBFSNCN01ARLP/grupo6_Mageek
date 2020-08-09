const { getDetails } = require("./categoryDataService");
const db = require("../../database/models");
const { response } = require("../../app");

const productCatcher = {
    getProducts: async function (idArray) {
        const resultsArray = [];
        for (let i = 0; i < idArray.length; i++) {
            let productInstance = await db.Productos.findByPk(idArray[i], {
                include: [{ model: db.Categorias, as: "categorias" }],
            });
            let productDetails = await getDetails(productInstance);
            productInstance.dataValues.extraInfo = productDetails;
            resultsArray.push(productInstance.dataValues);
        }
        return resultsArray;
    },
    getSomeProducts: async function (tableName, amount = 2) {
        let result = [];
        let sortedRAW;
        switch (tableName) {
            case "Blisters":
                 sortedRAW = await db[tableName].findAll({
                     order: [["id", "DESC"]], limit: amount, include: [{ model: db.Ediciones, as: "ediciones" },],
                 });
                break;
            case "Cartas":
                 sortedRAW = await db[tableName].findAll({
                    order: [["id", "DESC"]],
                    limit: amount,
                    include: [
                        { model: db.Ediciones, as: "ediciones" },
                        { model: db.Colores, as: "colores" },
                        { model: db.Tipos, as: "tipos" },
                        { model: db.Artes, as: "artes" },
                    ],
                });
                break;
            case "Dados":
                 sortedRAW = await db[tableName].findAll({ order: [["id", "DESC"]], limit: amount });
                break;
            case "Folios":
                 sortedRAW = await db[tableName].findAll({ order: [["id", "DESC"]], limit: amount });
                break;
            case "Packs":
                 sortedRAW = await db[tableName].findAll({
                    order: [["id", "DESC"]],
                    limit: amount,
                     include: [{ model: db.Ediciones, as: "ediciones" }, { model: db.Colores, as: "colores" },],
                });
                break;
            default:
                return;
        }
        for (let i = 0; i < amount; i++) {
            const productCategoryData = sortedRAW[i];
            const pics = await db.Fotos.findAll({ where: { id_producto: productCategoryData.dataValues.id_producto } });
            const product = await db.Productos.findByPk(productCategoryData.dataValues.id_producto);
            result.push({
                productData: product.dataValues,
                categoryData: productCategoryData.dataValues,
                pics: pics,
            });
        }
        return result;
    },
};

module.exports = productCatcher;
