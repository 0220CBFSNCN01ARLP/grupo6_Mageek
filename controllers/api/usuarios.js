const { Usuarios, Paises, Permisos } = require("../../database/models");

const controller = {
    list: async function (req, res, next) {
        // Register GET
        let arrayOmitidos = [
            "password",
            "genero",
            "created_at",
            "updated_at",
            "id_pais",
            "id_permiso",
            "numero_identidad",
            "nacimiento",
            "calle",
            "departamento",
            "localidad",
            "provincia",
            "pic",
            "borrado",
        ];
        let usuarios = await Usuarios.findAll({
            include: [
                { model: Paises, as: "paises" },
                { model: Permisos, as: "permisos" },
            ],
            attributes: { exclude: arrayOmitidos },
        });
        usuarios.forEach(usuario => {
            usuario.nombre += ` ${usuario.apellido}`
        });
        let resultados = { count: usuarios.length }
        resultados.users = usuarios.map((usuario) => {
            return {
                id: usuario.id,
                nombre: usuario.nombre,
                email: usuario.email,
                detail: `http://localhost:3000/api/usuarios/${usuario.id}`
            }
        })
        res.send(resultados);
    },
    detail: async function (req, res, next) {
        let arrayOmitidos = [
            "password",
            "genero",
            "created_at",
            "updated_at",
            "id_pais",
            "id_permiso",
            "numero_identidad",
            "email",
            "nacimiento",
            "calle",
            "departamento",
            "localidad",
            "provincia",
            "pic",
            "borrado",
        ];
        let usuario = await Usuarios.findByPk(req.params.id, {
            include: [
                { model: Paises, as: "paises" },
                { model: Permisos, as: "permisos" },
            ],
            attributes: { exclude: arrayOmitidos },
        });
        usuario.dataValues.pais = usuario.paises.pais;
        delete usuario.dataValues.paises
        usuario.dataValues.tipo = usuario.permisos.permiso;
        delete usuario.dataValues.permisos;

        res.send(usuario);
    },
    create: async function (req, res, next) {
        let arrayOmitidos = ["password", "genero", "created_at", "updated_at"];
        let usuario = await Usuarios.findByPk(req.params.id, {
            attributes: { exclude: arrayOmitidos },
            include: [
                { model: Paises, as: "paises" },
                { model: Permisos, as: "permisos" },
            ],
        });
        res.send(usuario);
    },
    update: async function (req, res, next) {
        let arrayOmitidos = ["password", "genero", "created_at", "updated_at"];
        let usuario = await Usuarios.findByPk(req.params.id, {
            attributes: { exclude: arrayOmitidos },
            include: [
                { model: Paises, as: "paises" },
                { model: Permisos, as: "permisos" },
            ],
        });
        res.send(usuario);
    },
    destroy: async function (req, res, next) {},
};

module.exports = controller;