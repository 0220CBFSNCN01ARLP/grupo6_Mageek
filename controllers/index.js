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
        let product = await Productos.findByPk(120, {
            include: [{ model: Categorias, as: "categorias" }],
        });
        let fotos = await Fotos.findAll({
            where: {
                id_producto: product.dataValues.id,
            }
        })
        product.url = fotos[0].url;
        console.log(product.url);
        res.render("index", { product: product }); // Needs DB
    },
};
module.exports = controller;
