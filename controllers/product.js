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
const { info, exception } = require("console");
const getDetails = require(path.join(__dirname, "..", "controllers", "modules", "getDetails"));

const controller = {
    none: async function (req, res, next) {
        res.redirect("/");
    },
    product: async function (req, res) {
        // load product
        const product = await Productos.findByPk(req.params.id, {
            include: [
                {
                    model: Categorias,
                    as: "categorias",
                },
            ],
        });
        if (!product) res.send("product doesn't exist"); // PRODUCT 404
        let pictures = await Fotos.findAll({
            where: {
                id_producto: product.id,
            },
        });
        let detalle = await getDetails(product);
        console.log(detalle);
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
            if (a.artista > b.artista) {
                return 1;
            }
            if (a.artista < b.artista) {
                return -1;
            }
            return 0;
        });
        categorias.sort();
        colores.sort();
        ediciones.sort((a, b) => {
            if (a.nombre > b.nombre) {
                return 1;
            }
            if (a.nombre < b.nombre) {
                return -1;
            }
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
    createOnCategory: async function (req, res, next) {
        let artes = await Artes.findAll();
        let categorias = await Categorias.findAll();
        let colores = await Colores.findAll();
        let ediciones = await Ediciones.findAll();
        let tipos = await Tipos.findAll();
        artes.sort((a, b) => {
            if (a.artista > b.artista) {
                return 1;
            }
            if (a.artista < b.artista) {
                return -1;
            }
            return 0;
        });
        categorias.sort();
        colores.sort();
        ediciones.sort((a, b) => {
            if (a.nombre > b.nombre) {
                return 1;
            }
            if (a.nombre < b.nombre) {
                return -1;
            }
            return 0;
        });
        tipos.sort();

        switch (req.params.id) {
            case "0":
                categoria = "Blister";
                break;
            case "1":
                categoria = "Carta";
                break;
            case "2":
                categoria = "Dado";
                break;
            case "3":
                categoria = "Folio";
                break;
            case "4":
                categoria = "Pack";
                break;
            default:
                res.send("default en el switch");
        }
        console.log(artes);
        res.render(`add${categoria}`, {
            artes: artes,
            categorias: categorias,
            colores: colores,
            ediciones: ediciones,
            tipos: tipos,
        });

        console.log(` ${typeof req.params.id}`);
        // validate
        // console.log(req.body);
        // for (let campo in req.body) {
        //     if (!req.body[campo].trim()) {
        //         res.send(`El campo ${campo} está vacío.`);
        //     }
        // }
        // await Productos.create(req.body);
        // let product = await Productos.findOne({
        //     where: {
        //         nombre: req.body.nombre,
        //     },
        //     include: [
        //         {
        //             model: Categorias,
        //             as: "categorias",
        //         },
        //     ],
        // });
        // req.files.forEach(async function (file) {
        //     let foto = await Fotos.create({
        //         created_at: Date.now(),
        //         url: file.filename,
        //         id_producto: product.id,
        //     });
        // });
        // let productPath = "/product/" + product.id;
        // res.redirect(productPath);
    },
    save: async function (req, res, next) {
        let datosProducto = {
            nombre: req.body.nombre,
            precio: req.body.precio,
            stock: req.body.stock,
            descripcion: req.body.descripcion,
        };
        let infoValidacion = req.body;
        console.log(infoValidacion);
        // let excepciones = [
        //     "descripcion",
        //     "subtipo",
        //     "flavortext",
        //     "oracle",
        //     "mana",
        //     "ataque",
        //     "defensa",
        //     "submit",
        // ];
        // excepciones.forEach((excepcion) => {
        //     delete infoValidacion[excepcion];
        // });
        // for (let campo in infoValidacion) {
        //     console.log(`${campo} : ${infoValidacion[campo]}`);
        // }
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
        switch (infoValidacion.id_categoria) {
            case "0": // Blister
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

            case "1": // Carta magic
                datosProducto.id_categoria = "2";
                nuevoProducto = await Productos.create(datosProducto);
                console.log(req.body);
                product = await Productos.findOne({
                    where: { id: nuevoProducto.id },
                    include: [{ model: Categorias, as: "categorias" }],
                });
                let datosCarta = {
                    id_tipo: req.body.id_tipo,
                    subtipo: req.body.subtipo,
                    oracle: req.body.oracle,
                    flavortext: req.body.flavortext,
                    mana: req.body.mana,
                    ataque: req.body.ataque,
                    defensa: req.body.defensa,
                    id_edicion: req.body.id_edicion,
                    id_arte: req.body.id_arte,
                    id_color: "3",
                    id_producto: product.id,
                };
                let colores = ["azul", "blanco", "negro", "rojo", "verde", "incoloro"];
                colores.forEach((color) => {
                    if (req.body[color]) {
                        datosCarta[color] = true;
                    }
                });
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

            case "2": // Dado
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

            case "3": // Folio
                datosProducto.id_categoria = "4";
                nuevoProducto = await Productos.create(datosProducto);
                let datosFolio = {
                    id_producto: nuevoProducto.id,
                    id_color: req.body.id_color,
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

            case "4": // Pack
                datosProducto.id_categoria = "5";
                nuevoProducto = await Productos.create(datosProducto);
                let datosPack = {
                    id_producto: nuevoProducto.id,
                    modelo: req.body.modelo,
                    id_edicion: req.body.id_edicion,
                    id_color: "3",
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
        // destroy product details according to its category
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

        console.log(detalle);
        res.render("detalle-producto", {
            product: product,
            pictures: pictures,
            detalle: detalle,
        });
    },
};
module.exports = controller;
