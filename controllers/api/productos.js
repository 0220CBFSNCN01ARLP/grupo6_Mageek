const {
    Categorias,
    Productos,
    // Blisters,
    // Cartas,
    // Dados,
    // Folios,
    // Fotos,
    // Packs,
} = require("../../database/models");

const controller = {
    list: async function (req, res, next) {
        let productos = await Productos.findAll();
        res.send(productos);
    },
    detail: async function (req, res, next) {
        let arrayOmitidos = ["descripcion", "borrado", "created_at", "updated_at"];
        let producto = await Productos.findByPk(req.params.id, {
            attributes: { exclude: arrayOmitidos },
            include: [{ model: Categorias, as: "categorias" }],
        });
        res.send(producto);
    },
    create: async function (req, res, next) {
        let producto = await Productos.create(req.body);
        res.send(producto);
    },
    update: async function (req, res, next) {
        let producto = await Productos.findByPk(req.params.id);
        res.send(producto);
    },
    destroy: async function (req, res, next) {
        let producto = await Productos.findByPk(req.params.id);
        // producto.destroy();
        res.send("producto eliminado -- feature disabled temporarily");
    },
};
module.exports = controller;
