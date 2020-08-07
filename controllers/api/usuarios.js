const { Usuarios, Paises, Permisos } = require("../../database/models");
const bcrypt = require("bcrypt");

const controller = {
    list: async function (req, res, next) {
        // Register GET
        let arrayOmitidos = [
            "password",
            "created_at",
            "updated_at",
            "id_pais",
            "id_permiso",
            "nacimiento",
            "calle",
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
        usuarios.forEach((usuario) => {
            usuario.nombre += ` ${usuario.apellido}`;
        });
        let resultados = { metadata: { count: usuarios.length } };
        resultados.data = usuarios.map((usuario) => {
            return {
                id: usuario.id,
                nombre: usuario.nombre,
                email: usuario.email,
                detail: `http://localhost:3000/api/usuarios/${usuario.id}`,
            };
        });
        res.send(resultados);
    },
    detail: async function (req, res, next) {
        let arrayOmitidos = [
            "password",
            "created_at",
            "updated_at",
            "id_pais",
            "id_permiso",
            "email",
            "nacimiento",
            "calle",
            "pic",
            "borrado",
        ];
        let foundUser = await Usuarios.findByPk(req.params.id, {
            include: [
                { model: Paises, as: "paises" },
                { model: Permisos, as: "permisos" },
            ],
            attributes: { exclude: arrayOmitidos },
        });
        foundUser.dataValues.pais = foundUser.paises.pais;
        foundUser.dataValues.tipo = foundUser.permisos.permiso;
        let usuario = {
                id: foundUser.id,
                nombre_de_usuario: foundUser.dataValues.nombre_de_usuario,
                nombre: foundUser.nombre + " " + foundUser.apellido,
                pais: foundUser.dataValues.pais,
                tipo: foundUser.dataValues.tipo,
        };
        let resultado = {
            metadata: {
                endpoint: `http://localhost:3000/api/usuarios`,
            },
            data: usuario,
        }
        res.send(resultado);
    },
    create: async function (req, res, next) {
        let user = {
            created_at: new Date(),
            updated_at: new Date(),
            nombre_de_usuario: req.body.nombre_de_usuario,
            nombre: req.body.nombre,
            apellido: req.body.apellido,
            email: req.body.email,
            nacimiento: req.body.nacimiento,
            calle: req.body.calle,
            id_pais: req.body.id_pais,
            id_permiso: 1, // enforce user status
        };
        let hashedPass = bcrypt.hashSync(req.body.password, 10);
        if (!bcrypt.compareSync(req.body.pass2, hashedPass)) {
            // checks hashed password
            res.send(`password mismatch
                passwords are ${req.body.password}|${req.body.pass2}`);
        }
        user.password = hashedPass;
        let errors = "";
        for (field in user) {
            if (!user[field]) {
                errors += `
                        ${field} está vacío`;
            }
        }
        if (errors) {
            res.send(errors);
        } else {
            await Usuarios.create(user);
            res.send(user);
        }
    },
    update: async function (req, res, next) {
        let arrayOmitidos = ["created_at", "id_permiso"]; // won't change this
        let userToEdit = await Usuarios.findByPk(req.params.id, {
            attributes: { exclude: arrayOmitidos },
            include: [
                { model: Paises, as: "paises" },
                { model: Permisos, as: "permisos" },
            ],
        });
        userToEdit.updated_at = new Date();
        userToEdit.nombre = req.body.nombre || userToEdit.nombre;
        userToEdit.apellido = req.body.apellido || userToEdit.apellido;
        userToEdit.nombre_de_usuario = req.body.nombre_de_usuario || userToEdit.nombre_de_usuario;
        userToEdit.email = req.body.email || userToEdit.email;
        userToEdit.nacimiento = req.body.nacimiento || userToEdit.nacimiento;
        userToEdit.calle = req.body.calle || userToEdit.calle;
        userToEdit.id_pais = req.body.id_pais || userToEdit.id_pais;
        userToEdit.password = bcrypt.hashSync(req.body.password,10) || userToEdit.password;

        await userToEdit.save();
        res.send(userToEdit);
    },
    destroy: async function (req, res, next) {},
};

module.exports = controller;
