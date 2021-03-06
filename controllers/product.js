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
const { setColorValue, prepareColors } = require("./modules/colorService");
const { getDetails, saveDetails } = require("./modules/categoryDataService");
const { recordUser } = require("./modules/userCatcher");
const { check, validationResult, body } = require("express-validator");
const { Op } = require("sequelize");

// export
const controller = {
    none: async function (req, res, next) {
        if (typeof req.query.categoryQuery != "undefined") {
            if (typeof req.query.searchQuery != "undefined") {
                let search = `%${req.query.searchQuery}%`;
                var allProducts = await Productos.findAll({
                    where: {
                        nombre: { [Op.like]: search },
                        id_categoria: req.query.categoryQuery,
                    },
                    order: [["id", "DESC"]],
                    limit: 24,
                });
            } else {
                var allProducts = await Productos.findAll({
                    where: {
                        id_categoria: req.query.categoryQuery,
                    },
                    order: [["id", "DESC"]],
                    limit: 24,
                });
            }
        } else {
            if (typeof req.query.searchQuery != "undefined") {
                let search = `%${req.query.searchQuery}%`;
                var allProducts = await Productos.findAll({
                    where: {
                        nombre: { [Op.like]: search },
                    },
                    order: [["id", "DESC"]],
                    limit: 24,
                });
            } else {
                var allProducts = await Productos.findAll({
                    order: [["id", "DESC"]],
                    limit: 24,
                });
            }
        }
        console.log();
        console.log(allProducts.length);
        console.log();
        const userLoggedStatus = await recordUser(req, res);
        let picArray = [];
        for (let i = 0; i < allProducts.length; i++) {
            let pics = await Fotos.findAll({
                where: { id_producto: allProducts[i].dataValues.id },
            });
            await picArray.push(pics);
        }
        res.render("products", {
            productList: allProducts,
            picArray: picArray,
            userLoggedStatus: userLoggedStatus,
        });
    },
    product: async function (req, res) {
        // load product
        const userLoggedStatus = await recordUser(req, res);
        const product = await Productos.findByPk(req.params.id, {
            include: [{ model: Categorias, as: "categorias" }],
        });
        if (!product)
            res.render("product-NF", {
                userLoggedStatus: userLoggedStatus,
                message:
                    "EL PRODUCTO QUE ESTAS SOLICITANDO FUE DESTRUIDO POR UN LIGHTNING BOLT!! LO SENTIMOS :(",
            }); // PRODUCT 404
        let pictures = await Fotos.findAll({
            where: { id_producto: product.id },
        });
        let detalle = await getDetails(product, res);
        res.render("detail-product", {
            product: product,
            pictures: pictures,
            detalle: detalle,
            userLoggedStatus: userLoggedStatus,
        });
    },
    createOnCategory: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        let artes = await Artes.findAll();
        let categorias = await Categorias.findAll();
        let colores = await Colores.findAll();
        let ediciones = await Ediciones.findAll();
        let tipos = await Tipos.findAll();
        artes.sort((a, b) => {
            if (a.artista > b.artista) { return 1; };
            if (a.artista < b.artista) { return -1; };
            return 0;
        });
        // sorting arrays
        categorias.sort();
        colores.sort();
        ediciones.sort((a, b) => {
            if (a.nombre > b.nombre) { return 1; };
            if (a.nombre < b.nombre) { return -1; };
            return 0;
        });
        tipos.sort((a, b) => {
            if (a.tipo > b.tipo) { return 1; };
            if (a.tipo < b.tipo) { return -1; };
            return 0;
        });
        // generating url
        let categoria = "";
        if (Number(req.params.id) === 1) categoria = "Blister";
        if (Number(req.params.id) === 2) categoria = "Carta";
        if (Number(req.params.id) === 3) categoria = "Dado";
        if (Number(req.params.id) === 4) categoria = "Folio";
        if (Number(req.params.id) === 5) categoria = "Pack";
        console.log(categoria);
        if (categoria == "") res.redirect("/error404");
        // render the data
        res.render(`add${categoria}`, {
            artes: artes,
            categorias: categorias,
            colores: colores,
            ediciones: ediciones,
            tipos: tipos,
            userLoggedStatus: userLoggedStatus,
        });
    },
    save: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        let datosProducto = {
            nombre: req.body.nombre,
            precio: req.body.precio,
            stock: req.body.stock,
            descripcion: req.body.descripcion,
        };
        let infoValidacion = req.body;
        let excepciones = [
            "descripcion",
            "subtipo",
            "flavortext",
            "oracle",
            "mana",
            "ataque",
            "defensa",
        ];
        let flavortext = req.body.flavortext;
        let oracle = req.body.oracle;
        let mana = req.body.mana;
        let subtipo = req.body.subtipo;
        let ataque = req.body.ataque;
        let defensa = req.body.defensa;
        excepciones.forEach((excepcion) => {
            datosProducto[excepcion] = infoValidacion[excepcion];
            delete infoValidacion[excepcion];
        });
        function validacionGeneral(info) {
            let errores = "";
            for (let campo in info) {
                if (!info[campo]) {
                    errores += `
                                ${campo} está vacío.`;
                }
            }
            if (errores == "") {
                return true;
            } else {
                res.send(errores);
            }
        }
        if (!validacionGeneral(infoValidacion)) {
            res.send("Ocurrió un error inesperado.");
            res.end;
        }
        let nuevoProducto;
        let product;
        let productPath;
        datosProducto.created_at = new Date();
        datosProducto.updated_at = new Date();
        switch (infoValidacion.id_categoria) {
            case "1": // Blister
                datosProducto.id_categoria = "1";
                nuevoProducto = await Productos.create(datosProducto);
                let datosBlister = {
                    arte: req.body.arte,
                    id_producto: nuevoProducto.id,
                    id_edicion: req.body.id_edicion,
                };
                let nuevoBlister = await Blisters.create(datosBlister);

                product = await Productos.findOne({
                    where: { id: nuevoProducto.id },
                    include: [{ model: Categorias, as: "categorias" }],
                });
                req.files.forEach(async function (file) {
                    let foto = await Fotos.create({
                        created_at: Date.now(),
                        url: file.filename,
                        id_producto: product.id,
                    });
                });
                productPath = "/product/" + product.id;
                res.redirect(productPath);
                break;

            case "2": // Carta magic
                datosProducto.id_categoria = "2";
                nuevoProducto = await Productos.create(datosProducto);
                product = await Productos.findOne({
                    where: { id: nuevoProducto.id },
                    include: [{ model: Categorias, as: "categorias" }],
                });
                let colors = [
                    req.body.azul,
                    req.body.blanco,
                    req.body.negro,
                    req.body.rojo,
                    req.body.verde,
                    req.body.incoloro,
                ];
                let idColors = setColorValue(colors);
                let datosCarta = {
                    created_at: new Date(),
                    updated_at: new Date(),
                    id_tipo: req.body.id_tipo,
                    subtipo: subtipo || " ",
                    oracle: oracle,
                    flavortext: flavortext,
                    mana: mana,
                    ataque: ataque || " ",
                    defensa: defensa || " ",
                    id_edicion: req.body.id_edicion,
                    id_arte: req.body.id_arte,
                    id_color: idColors,
                    id_producto: product.id,
                };
                let nuevaCarta = await Cartas.create(datosCarta);

                req.files.forEach(async function (file) {
                    let foto = await Fotos.create({
                        created_at: Date.now(),
                        url: file.filename,
                        id_producto: product.id,
                    });
                });
                productPath = "/product/" + product.id;
                res.redirect(productPath);
                break;

            case "3": // Dado
                datosProducto.id_categoria = "3";
                nuevoProducto = await Productos.create(datosProducto);
                let datosDado = {
                    id_producto: nuevoProducto.id,
                    color: req.body.color,
                    caras: req.body.caras,
                };
                let nuevoDado = await Dados.create(datosDado);

                product = await Productos.findOne({
                    where: { id: nuevoProducto.id },
                    include: [{ model: Categorias, as: "categorias" }],
                });
                req.files.forEach(async function (file) {
                    let foto = await Fotos.create({
                        created_at: Date.now(),
                        url: file.filename,
                        id_producto: product.id,
                    });
                });
                productPath = "/product/" + product.id;
                res.redirect(productPath);
                break;

            case "4": // Folio
                datosProducto.id_categoria = "4";
                nuevoProducto = await Productos.create(datosProducto);
                let datosFolio = {
                    id_producto: nuevoProducto.id,
                    color: req.body.color,
                    id_edicion: req.body.id_edicion,
                    modelo: req.body.modelo,
                };
                let nuevoFolio = await Folios.create(datosFolio);

                product = await Productos.findOne({
                    where: { id: nuevoProducto.id },
                    include: [{ model: Categorias, as: "categorias" }],
                });
                req.files.forEach(async function (file) {
                    let foto = await Fotos.create({
                        created_at: Date.now(),
                        url: file.filename,
                        id_producto: product.id,
                    });
                });
                productPath = "/product/" + product.id;
                res.redirect(productPath);
                break;

            case "5": // Pack
                datosProducto.id_categoria = "5";
                let colores = [
                    req.body.azul,
                    req.body.blanco,
                    req.body.negro,
                    req.body.rojo,
                    req.body.verde,
                    req.body.incoloro,
                ];
                let idColores = setColorValue(colores);
                nuevoProducto = await Productos.create(datosProducto);
                let datosPack = {
                    id_producto: nuevoProducto.id,
                    modelo: req.body.modelo || "sin modelo",
                    id_edicion: req.body.id_edicion,
                    id_color: idColores,
                };
                let nuevoPack = await Packs.create(datosPack);

                product = await Productos.findOne({
                    where: { id: nuevoProducto.id },
                    include: [{ model: Categorias, as: "categorias" }],
                });
                req.files.forEach(async function (file) {
                    let foto = await Fotos.create({
                        created_at: Date.now(),
                        url: file.filename,
                        id_producto: product.id,
                    });
                });
                productPath = "/product/" + product.id;
                res.redirect(productPath);
                break;

            default:
                console.log("el switch funciona");
                res.send(infoValidacion);
        }
    },
    delete: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        let product = await Productos.findByPk(req.params.id);
        res.render("deleteProduct", {
            product: product,
            userLoggedStatus: userLoggedStatus,
        });
    },
    destroy: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        let product = await Productos.findByPk(req.params.id);
        let fotos = await Fotos.findAll({
            where: {
                id_producto: req.params.id,
            },
        });
        // destroy product details according to its category
        product.destroy();
        fotos.forEach((foto) => {
            foto.destroy();
        });
        res.render("success", { userLoggedStatus: userLoggedStatus });
    },
    destroyPicture: async function (req, res, next) {
        let foto = await Fotos.findByPk(req.params.fotoId);
        foto.destroy();
        let link = `/product/${req.params.id}`;
        res.redirect(link);
    },
    update: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        const categorias = await Categorias.findAll();
        const tipos = await Tipos.findAll();
        const artes = await Artes.findAll();
        const ediciones = await Ediciones.findAll();
        const product = await Productos.findByPk(req.params.id, {
            include: [{ model: Categorias, as: "categorias" }],
        });
        let linkCategoria = product.categorias.dataValues.categoria[0].toUpperCase();
        linkCategoria += product.categorias.dataValues.categoria.slice(
            1,
            product.categorias.dataValues.categoria.length
        );
        let detalle = await getDetails(product, res);
        console.log(product.categorias.dataValues.categoria);
        if (product.categorias.dataValues.categoria == 2 ||product.categorias.dataValues.categoria == 5) {
            var arrayColores = await prepareColors(detalle.dataValues.id_color);
            console.log("llegaste?");
        } else {
            var arrayColores = [];
            console.log("123llegaste?");
        };
        console.log(arrayColores);
        ediciones.sort((a, b) => {
            if (a.dataValues.anio < b.dataValues.anio) {
                return 1;
            }
            if (a.dataValues.anio > b.dataValues.anio) {
                return -1;
            }
        });
        artes.sort((a, b) => {
            if (a.dataValues.artista > b.dataValues.artista) {
                return 1;
            }
            if (a.dataValues.artista < b.dataValues.artista) {
                return -1;
            }
        });
        res.render(`edit${linkCategoria}`, {
            product: product.dataValues,
            categorias: categorias,
            tipos: tipos,
            detalle: detalle,
            ediciones: ediciones,
            artes: artes,
            colores: arrayColores,
            userLoggedStatus: userLoggedStatus,
        });
    },
    stash: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            // re-render edit with errors
            const categorias = await Categorias.findAll();
            const tipos = await Tipos.findAll();
            const artes = await Artes.findAll();
            const ediciones = await Ediciones.findAll();
            const product = await Productos.findByPk(req.params.id, {
                include: [{ model: Categorias, as: "categorias" }],
            });
            let linkCategoria = product.categorias.dataValues.categoria[0].toUpperCase();
            linkCategoria += product.categorias.dataValues.categoria.slice(
                1,
                product.categorias.dataValues.categoria.length
            );
            let detalle = await getDetails(product, res);
            let arrayColores = prepareColors(detalle.dataValues.id_color);
            ediciones.sort((a, b) => {
                if (a.dataValues.anio < b.dataValues.anio) { return 1; };
                if (a.dataValues.anio > b.dataValues.anio) { return -1; };
            });
            artes.sort((a, b) => {
                if (a.dataValues.artista > b.dataValues.artista) { return 1; };
                if (a.dataValues.artista < b.dataValues.artista) { return -1; };
            });
            res.render(`edit${linkCategoria}`, {
                product: product.dataValues,
                categorias: categorias,
                tipos: tipos,
                detalle: detalle,
                ediciones: ediciones,
                artes: artes,
                colores: arrayColores,
                userLoggedStatus: userLoggedStatus,
                errors: errors.errors,
            });
        } else {
            // everything's ok, continue
            let product = await Productos.findByPk(req.params.id, {
                include: [{ model: Categorias, as: "categorias" }],
            });
            let colors = [
                req.body.azul,
                req.body.blanco,
                req.body.negro,
                req.body.rojo,
                req.body.verde,
                req.body.incoloro,
            ];
            await product.save();
            product.dataValues.color = Number(setColorValue(colors));
            let pictures = await Fotos.findAll({
                where: {
                    id_producto: product.id,
                },
            });
            let detalle = await getDetails(product, res);
            detalle.dataValues.id_color = product.dataValues.color;
            await saveDetails(product, detalle);
            // res.send(product);
            // res.end();
            res.render("detalle-producto", {
                product: product,
                pictures: pictures,
                detalle: detalle,
                userLoggedStatus: userLoggedStatus,
            });
        }
    },
    search: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        let allProducts = await Productos.findAll({
            // where:{nombre, "LIKE",`%${clave}%`},
            order: [["id", "DESC"]],
            limit: 20,
        });
        let picArray = [];
        for (let i = 0; i < allProducts.length; i++) {
            let pics = await Fotos.findAll({
                where: { id_producto: allProducts[i].dataValues.id },
            });
            picArray.push(pics);
        }
        res.render("products", {
            productList: allProducts,
            picArray: picArray,
            userLoggedStatus: userLoggedStatus,
        });
    },
};
module.exports = controller;
