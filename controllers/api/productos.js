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

async function segundoFiltro(producto, datosCategoria) {
    for (dato in datosCategoria.dataValues) {
        producto.dataValues[dato] = datosCategoria.dataValues[dato];
    }
    delete producto.dataValues.created_at;
    delete producto.dataValues.updated_at;
    delete producto.dataValues.id_producto;
}
function filtroEdiciones(producto) {
    producto.dataValues.anio = producto.dataValues.ediciones.anio.toString();
    producto.dataValues.edicion = producto.dataValues.ediciones.nombre;
    delete producto.dataValues.ediciones;
    delete producto.dataValues.id_producto;
    delete producto.dataValues.id_edicion;
}
function filtroColores(producto) {
    producto.dataValues.color = producto.dataValues.colores.color;
    delete producto.dataValues.colores;
    delete producto.dataValues.id_producto;
    delete producto.dataValues.id_color;
}
function filtroTipos(producto) {
    producto.dataValues.tipo = producto.dataValues.tipos.tipo;
    delete producto.dataValues.tipos;
    delete producto.dataValues.id_producto;
    delete producto.dataValues.id_tipo;
}
function filtroArtes(producto) {
    producto.dataValues.artista = producto.dataValues.artes.artista;
    delete producto.dataValues.artes;
    delete producto.dataValues.id_producto;
    delete producto.dataValues.id_arte;
}
const controller = {
    list: async function (req, res, next) {
        let productos = { count: "" };
        var listaProductos = await Productos.findAll({
            include: [
                {
                    model: Fotos,
                    as: "fotos",
                },
            ],
        });
        // count (length)
        productos.count = listaProductos.length;
        // countByCategory → objeto literal con una propiedad por categoría con el
        // total de productos
        let listaBlister = await Blisters.findAll();
        let listaCarta = await Cartas.findAll();
        let listaDado = await Dados.findAll();
        let listaFolio = await Folios.findAll();
        let listaPack = await Packs.findAll();

        productos.countByCategory = {
            blister: listaBlister.length,
            carta: listaCarta.length,
            dado: listaDado.length,
            folio: listaFolio.length,
            pack: listaPack.length,
        };
        // ○ products → array con la colección de products, cada uno con:
        // ■ id
        // ■ name
        //  de description
        // ■ un array con principal relación de uno a muchos (ej: categories)
        // ■ detail → URL para obtener el detalle
        for (let producto in listaProductos) {
            delete listaProductos[producto].dataValues.created_at;
            delete listaProductos[producto].dataValues.updated_at;
            delete listaProductos[producto].dataValues.stock;
            delete listaProductos[producto].dataValues.precio;
            if (listaProductos[producto].dataValues.borrado) {
                listaProductos.splice(producto, 1);
            }

            listaProductos[
                producto
            ].dataValues.detail = `localhost:3000/api/productos/${listaProductos[producto].dataValues.id}`;
            let picArray = [];
            listaProductos[producto].dataValues.fotos.forEach((pic, index) => {
                console.log(pic.url);
                picArray.push(pic.url);
            });
            delete listaProductos[producto].dataValues.fotos;
            listaProductos[producto].dataValues.arrayImagenes = picArray;
        }
        productos.products = listaProductos;
        res.send(productos);
    },
    detail: async function (req, res, next) {
        let arrayOmitidos = ["descripcion", "borrado", "created_at", "updated_at"];
        let producto = await Productos.findByPk(req.params.id, {
            attributes: { exclude: arrayOmitidos },
            include: [{ model: Categorias, as: "categorias" }],
        });
        producto.dataValues.categoria = producto.categorias.categoria;
        switch (producto.dataValues.categoria) {
            case "blister":
                let datosBlister = await Blisters.findOne({
                    where: { id_producto: producto.dataValues.id },
                    include: [{ model: Ediciones, as: "ediciones" }],
                });
                segundoFiltro(producto, datosBlister);
                filtroEdiciones(producto);
                break;
            case "carta":
                let datosCarta = await Cartas.findOne({
                    where: { id_producto: producto.dataValues.id },
                    include: [
                        { model: Ediciones, as: "ediciones" },
                        { model: Colores, as: "Carta_Color" },
                        { model: Tipos, as: "tipos" },
                        { model: Artes, as: "artes" },
                    ],
                });
                segundoFiltro(producto, datosCarta);
                filtroEdiciones(producto);
                filtroColores(producto);
                filtroTipos(producto);
                filtroArtes(producto);
                break;
            case "dado":
                let datosDado = await Dados.findOne({
                    where: { id_producto: producto.dataValues.id },
                });
                segundoFiltro(producto, datosDado);
                break;
            case "folio":
                let datosFolio = await Folios.findOne({
                    where: { id_producto: producto.dataValues.id },
                });
                segundoFiltro(producto, datosFolio);
                filtro;
                break;
            case "pack":
                let datosPack = await Packs.findOne({
                    where: { id_producto: producto.dataValues.id },
                    include: [
                        { model: Colores, as: "colores" },
                        { model: Ediciones, as: "ediciones" },
                    ],
                });
                segundoFiltro(producto, datosPack);
                filtroColores(producto);
                filtroEdiciones(producto);
                break;
            default:
                res.send("error: default");
        }
        delete producto.dataValues.categorias;
        delete producto.dataValues.id_categoria;
        let fotos = await Fotos.findAll({ where: { id_producto: req.params.id } });
        if (fotos.length > 0) {
            producto.dataValues.foto = fotos[0].dataValues.url;
        }
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
