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

const controller = {
    index: async (req, res, next) => {
        let user = req.session.userId || req.cookies.userId;
        let todaysProduct = Math.floor(Math.random() * (208 - 201)) + 201;
        let product = await Productos.findByPk(todaysProduct, { include: [{ model: Categorias, as: "categorias" }], });
        let fotos = await Fotos.findAll({ where: { id_producto: product.dataValues.id, }, });
        product.url = fotos[0].url;
        res.render("index", {
            product: product,
            fotos: fotos,
            user: user,
        });
    },
};
module.exports = controller;
