const fs = require("fs");
const path = require("path");
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
const getDetails = require(path.join(__dirname, "..", "controllers", "modules", "getDetails"));

const controller = {
    none: async function (req, res, next) {
        res.redirect("/");
    },
    product: async function (req, res) {
        // load database
        // load product
        const product = await Productos.findByPk(req.params.id, {
            include: [
                {
                    model: Categorias,
                    as: "categorias",
                },
            ],
        });
        if (!product) res.send("product doesn't exist");
        let pictures = await Fotos.findAll({
            where: {
                id_producto: product.id,
            },
        });
        getDetails(product);
        res.render("detalle-producto", {
            product: product,
            pictures: pictures,
            detalle: detalle,
        });
    },
    create: async function (req, res, next) {
        //goes to add page, GET
        let artes = await Artes.findAll();
        let categorias = await Categorias.findAll();
        let colores = await Colores.findAll();
        let ediciones = await Ediciones.findAll();
        let tipos = await Tipos.findAll();
        artes.sort((a, b) => {
            if (a.artista > b.artista) {return 1;}
            if (a.artista < b.artista) {return -1;}
            return 0;
        });
        categorias.sort();
        colores.sort();
        ediciones.sort((a, b) => {
            if (a.nombre > b.nombre) {return 1;}
            if (a.nombre < b.nombre) {return -1;}
            return 0;
        });
        tipos.sort();
        res.render("addProduct", {
            artes: artes,
            categorias: categorias,
            colores: colores,
            ediciones: ediciones,
            tipos: tipos,
        });
    },
    save: async function (req, res, next) {
        console.log(`${req.body.file} ${req.body.pic}`);
        // validate
        for (let campo in req.body) {
            if (!req.body[campo].trim()) {
                res.send(`El campo ${campo} está vacío.`);
            }
        }
        await Productos.create(req.body);
        let product = await Productos.findOne({
            where: {
                nombre: req.body.nombre,
            },
            include: [
                {
                    model: Categorias,
                    as: "categorias",
                },
            ],
        });
        req.files.forEach(async function (file) {
            let foto = await Fotos.create({
                created_at: Date.now(),
                url: file.filename,
                id_producto: product.id,
            });
        });
        let productPath = "/product/" + product.id;
        res.redirect(productPath);
    },
    delete: async function (req, res, next) {
        let product = await Productos.findByPk(req.params.id);
        res.render("deleteProduct", {
            product: product,
        });
    },
    destroy: async function (req, res, next) {
        let product = await Productos.findByPk(req.params.id);
        let fotos = await Fotos.findAll({
            where: {
                id_producto: req.params.id,
            },
        });
        // destroy product details according to it's category
        product.destroy();
        fotos.forEach((foto) => {
            foto.destroy();
        });
        res.render("success");
    },
    destroyPicture: async function (req, res, next) {
        let foto = await Fotos.findByPk(req.params.fotoId);
        foto.destroy();
        let link = `/product/${req.params.id}`;
        res.redirect(link);
    },
    update: async function (req, res, next) {
        const product = await Productos.findByPk(req.params.id, {
            include: [
                {
                    model: Categorias,
                    as: "categorias",
                },
            ],
        });
        const categorias = await Categorias.findAll();
        res.render("editProduct", {
            producto: product,
            categorias: categorias,
        });
    },
    stash: async function (req, res, next) {
        let product = await Productos.findByPk(req.params.id, {
            include: [
                {
                    model: Categorias,
                    as: "categorias",
                },
            ],
        });
        for (let campo in req.body) {
            product[campo] = req.body[campo];
        }
        await product.save();
        let pictures = await Fotos.findAll({
            where: {
                id_producto: product.id,
            },
        });
        let detalle;
        getDetails(product);
        res.render("detalle-producto", {
            product: product,
            pictures: pictures,
            detalle: detalle,
        });
    },
};
module.exports = controller;
