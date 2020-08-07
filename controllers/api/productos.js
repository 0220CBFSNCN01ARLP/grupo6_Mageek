const {
    Categorias,
    Blisters,
    Productos,
    Ediciones,
    Cartas,
    Dados,
    Colores,
    Tipos,
    Artes,
    Folios,
    Fotos,
    Packs,
} = require("../../database/models");
const addAdditionalData = require("../modules/addAdditionalData");



// UPDATE NEEDS A DATABASE MIGRATION FOR TABLE COLORES






// controller
const controller = {
    list: async function (req, res, next) {
        // fetching data
        var productArrayDB = await Productos.findAll({
            include: [{ model: Fotos, as: "fotos" }],
        });
        let listaBlister = await Blisters.findAll();
        let listaCarta = await Cartas.findAll();
        let listaDado = await Dados.findAll();
        let listaFolio = await Folios.findAll();
        let listaPack = await Packs.findAll();
        let photos = await Fotos.findAll();

        // count & count by category
        let productos = { metadata: { count: "" } };
        productos.metadata.count = productArrayDB.length;
        productos.metadata.countByCategory = {
            blister: listaBlister.length,
            carta: listaCarta.length,
            dado: listaDado.length,
            folio: listaFolio.length,
            pack: listaPack.length,
        };
        let productList = [];
        let erasedList = [];
        productArrayDB.forEach((product) => {
            let newProduct = {
                // create the product API blueprint
                id: product.id,
                nombre: product.nombre,
                descripcion: product.descripcion,
                detail: `http://localhost:3000/api/productos/${product.id}`,
                borrado: product.borrado,
                stock: product.stock,
                precio: product.precio,
            };
            if (!product.borrado) {
                productList.push(newProduct);
            } else {
                erasedList.push(newProduct);
            }
        });
        // assign photos to a new array
        let listWithPics = productList.map(function (product) {
            let picArray = [];
            photos.forEach((photo) => {
                if (photo.dataValues.id_producto == product.id) {
                    picArray.push(photo.dataValues.url);
                }
            });
            product.pic = picArray;
            return product;
        });
        // sort products before handing over
        productos.data = listWithPics.sort((a, b) => {
            if (a.id > b.id) {
                return 1;
            } else {
                return -1;
            }
        });
        productos.erasedData = erasedList.sort((a, b) => {
            if (a.id > b.id) {
                return 1;
            } else {
                return -1;
            }
        });
        res.send(productos);
    },

    detail: async function (req, res, next) {
        let producto = await Productos.findByPk(req.params.id, {
            include: [{ model: Categorias, as: "categorias" }],
        });
        let photos = await Fotos.findAll();
        // initialize the result
        let result = { metadata: { endpoint: `http://localhost:3000/api/productos` } };
        let picArray = [];
        photos.forEach((photo) => {
            if (photo.dataValues.id_producto == producto.id) {
                picArray.push(photo.dataValues.url);
            }
        });
        result.data = {
            id: producto.id,
            nombre: producto.nombre,
            categoria: producto.categorias.categoria,
            pic: picArray,
        };
        switch (result.data.categoria) {
            case "blister":
                let datosBlister = await Blisters.findOne({
                    where: { id_producto: producto.dataValues.id },
                    include: [{ model: Ediciones, as: "ediciones" }],
                });
                let blisterFieldsArray = ["arte"];
                addAdditionalData(result.data, datosBlister, blisterFieldsArray);
                break;
            case "carta":
                let datosCarta = await Cartas.findOne({
                    where: { id_producto: producto.dataValues.id },
                    include: [
                        { model: Ediciones, as: "ediciones" },
                        { model: Colores, as: "colores" },
                        { model: Tipos, as: "tipos" },
                        { model: Artes, as: "artes" },
                    ],
                });
                let cardFieldsArray = [
                    "oracle",
                    "flavortext",
                    "mana",
                    "ataque",
                    "defensa",
                    "limitado",
                    "subtipo",
                    "id_arte",
                    "id_tipo",
                    "id_color",
                    "id_edicion",
                ];
                addAdditionalData(result.data, datosCarta, cardFieldsArray);
                break;
            case "dado":
                let datosDado = await Dados.findOne({
                    where: { id_producto: producto.dataValues.id },
                });
                diceFieldsArray = ["caras", "color"];
                addAdditionalData(result.data, datosDado, diceFieldsArray);
                break;
            case "folio":
                let datosFolio = await Folios.findOne({
                    where: { id_producto: req.params.id },
                });
                folioFieldsArray = ["color"];
                addAdditionalData(result.data, datosFolio, folioFieldsArray);
                break;
            case "pack":
                let datosPack = await Packs.findOne({
                    where: { id_producto: producto.dataValues.id },
                    include: [
                        { model: Colores, as: "colores" },
                        { model: Ediciones, as: "ediciones" },
                    ],
                });
                packFieldsArray = ["modelo"];
                addAdditionalData(result.data, datosPack, packFieldsArray);
                break;
            default:
                res.send("error: default");
        }
        res.send(result);
    },
    create: async function (req, res) {
        req.body.stock = req.body.stock.toString();
        req.body.precio = req.body.precio.toString();
        let producto = await Productos.create(req.body);
        res.send(producto);
    },
    update: async function (req, res) {
        let product = await Productos.findByPk(req.params.id);
        // saves product's new details
        product.dataValues.updated_at = new Date();
        product.dataValues.nombre = req.body.nombre || product.dataValues.nombre;
        product.dataValues.stock = Number(req.body.stock) || product.dataValues.stock;
        product.dataValues.precio = req.body.precio || product.dataValues.precio;
        product.dataValues.descripcion = req.body.descripcion || product.dataValues.descripcion;
        product.dataValues.borrado = req.body.borrado || product.dataValues.borrado;
        switch (product.dataValues.id_categoria.toString()) {
            case "1": {
                // blister
                let blisterData = await Blisters.findOne({
                    where: { id_producto: product.dataValues.id },
                    include: [{ model: Ediciones, as: "ediciones" }],
                });
                blisterData.dataValues.updated_at = new Date();
                blisterData.dataValues.arte = req.body.arte || blisterData.dataValues.arte;
                blisterData.dataValues.id_edicion =
                    req.body.id_edicion || blisterData.dataValues.id_edicion;
                // await blisterData.save();
                product.dataValues.categoria = "blister";
                product.dataValues.arte = blisterData.dataValues.arte;
                product.dataValues.edicion =
                    blisterData.dataValues.ediciones.dataValues.anio +
                    " - " +
                    blisterData.dataValues.ediciones.dataValues.nombre;
                break;
            };
            case "2": {
                // carta
                let cardData = await Cartas.findOne({
                    where: { id_producto: product.dataValues.id },
                    include: [
                        { model: Ediciones, as: "ediciones" },
                        { model: Colores, as: "colores" },
                        { model: Tipos, as: "tipos" },
                        { model: Artes, as: "artes" },
                    ],
                });
                let cardFieldsArray = [
                    "oracle",
                    "flavortext",
                    "mana",
                    "ataque",
                    "defensa",
                    "limitado",
                    "subtipo",
                    "id_arte",
                    "id_tipo",
                    "id_color",
                    "id_edicion",
                ];
                cardData.dataValues.updated_at = new Date();
                cardFieldsArray.forEach((field) => {
                    cardData.dataValues[field] = req.body[field] || cardData.dataValues[field];
                });
                await cardData.save();
                cardFieldsArray.forEach((field) => {
                    product.dataValues[field] = req.body[field] || cardData.dataValues[field];
                });
                product.dataValues.artista = cardData.dataValues.artes.dataValues.artista;
                delete product.dataValues.id_arte;
                product.dataValues.tipo = cardData.dataValues.tipos.dataValues.tipo;
                delete product.dataValues.id_tipo;
                // console.log(cardData.dataValues.colores);
                product.dataValues.color = cardData.dataValues.colores.dataValues.color;
                delete product.dataValues.id_color;
                product.dataValues.edicion = cardData.dataValues.ediciones.dataValues.edicion;
                delete product.dataValues.id_edicion;
                product.dataValues.categoria = "carta";
                break;
            };
            case "3": {
                // dado
                let diceData = await Dados.findOne({ where: { id_producto: product.dataValues.id }, });
                diceData.dataValues.updated_at = new Date();
                diceData.dataValues.color = req.body.color || diceData.dataValues.color;
                diceData.dataValues.caras = req.body.caras || diceData.dataValues.caras;
                // await diceData.save();
                product.dataValues.categoria = "dado";
                product.dataValues.color = diceData.dataValues.color;
                product.dataValues.caras = diceData.dataValues.caras;
                break;
            };
            case "4": {
                // folio
                let folioData = await Folios.findOne({ where: { id_producto: product.dataValues.id }, });
                folioData.dataValues.updated_at = new Date();
                folioData.dataValues.color = req.body.color || folioData.dataValues.color;
                // await folioData.save();
                product.dataValues.categoria = "folio";
                product.dataValues.color = folioData.dataValues.color;
                break;
            };
            case "5": {
                // pack
                let packData = await Packs.findOne({
                    where: { id_producto: product.dataValues.id },
                    include: [
                        { model: Colores, as: "colores" },
                        { model: Ediciones, as: "ediciones" },
                    ],
                });
                packData.dataValues.updated_at = new Date();
                packData.dataValues.id_color = req.body.id_color || packData.dataValues.id_color;
                packData.dataValues.modelo = req.body.modelo || packData.dataValues.modelo;
                packData.dataValues.id_edicion = req.body.id_edicion || packData.dataValues.id_edicion;
                // await packData.save();
                product.dataValues.categoria = "pack";
                // product.dataValues.color = packData.dataValues.colores.dataValues.color;
                // delete product.dataValues.id_color;
                product.dataValues.edicion = packData.dataValues.ediciones.dataValues.edicion;
                delete product.dataValues.id_edicion;
                break;
            };
            default: {
            }
        }
        delete product.dataValues.id_categoria;
        // await product.save();
        res.send(product);
    },
    destroy: async function (req, res) {
        let producto = await Productos.findByPk(req.params.id);
        // producto.destroy();
        res.send("producto eliminado -- feature disabled temporarily");
    },
};
module.exports = controller;
