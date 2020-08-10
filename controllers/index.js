// imports
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
    Packs,
    Productos,
    Tipos,
} = require("../database/models");
const { recordUser } = require("./modules/userCatcher");
const { getSomeProducts } = require("./modules/productCatcher");

// functions
const controller = {
    // record user status
    index: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        let user = req.session.userId || req.cookies.userId;
        // load products
        //                                                  product = [{ productData, categoryData }];
        let blister = await getSomeProducts("Blisters");
        let card = await getSomeProducts("Cartas",4);
        let dice = await getSomeProducts("Dados");
        let cover = await getSomeProducts("Folios");
        let pack = await getSomeProducts("Packs");
        let mainArrays = {
            blisters: blister,
            cartas: card,
            dados: dice,
            folios: cover,
            packs: pack,
        };
        let todaysProduct = Math.floor(Math.random() * (208 - 201)) + 201;
        let product = await Productos.findByPk(todaysProduct, { include: [{ model: Categorias, as: "categorias" }], });
        let fotos = await Fotos.findAll({ where: { id_producto: product.dataValues.id, }, });
        product.url = fotos[0].url;
        res.render("index", {
            product: product,
            mainArrays: mainArrays,
            fotos: fotos,
            user: user,
            userLoggedStatus: userLoggedStatus
        });
    },
};
module.exports = controller;