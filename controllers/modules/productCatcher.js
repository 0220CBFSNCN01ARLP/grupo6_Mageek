const { Productos, Categorias } = require("../../database/models");
const {getDetails} = require("./categoryDataService")


const productCatcher = {
    getProducts: async function (idArray) {
        const resultsArray = [];
        for (let i = 0; i < idArray.length; i++) {
            let productInstance = await Productos.findByPk(idArray[i], {
                include: [{model: Categorias, as:"categorias"}]
            });
            let productDetails = await getDetails(productInstance);
            productInstance.dataValues.extraInfo = productDetails;
            resultsArray.push(productInstance.dataValues);
        }
        return resultsArray;
    },
};
module.exports = productCatcher;