// imports
const bcrypt = require("bcrypt");
const { Usuarios, Paises, Permisos, Productos_en_carrito } = require("../database/models");
const { recordUser } = require("./modules/userCatcher");
const { getProducts } = require("./modules/productCatcher");
const { check, validationResult, body } = require("express-validator");

// module
const catchUser = async function (cookie, session) {
    if (cookie || session) {
        return await Usuarios.findOne({
            where: { id: cookie || session },
        }); /* Load user in cookies or session*/
    } else {
        console.log(`cookie: ${cookie} · session: ${session}`);
    }
};

const controller = {
    userRegister: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        // Register GET
        let paises = await Paises.findAll();
        paises.sort((a, b) => {
            if (a.pais < b.pais) {
                return -1;
            } else {
                return 1;
            }
        });
        res.render("userRegister", { paises: paises, userLoggedStatus: userLoggedStatus });
    },

    create: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        // validate user
        let errors = validationResult(req);
        if (!errors.isEmpty()) {
            let paises = await Paises.findAll();
            paises.sort((a, b) => {
                if (a.pais < b.pais) {
                    return -1;
                } else {
                    return 1;
                }
            });
            console.log(errors);
            res.render("userRegister", {
                errors: errors.errors,
                userLoggedStatus: userLoggedStatus,
                paises: paises,
            });
            res.end();
        }
        for (let campo in req.body) {
            if (!req.body[campo].trim()) {
                res.send(`El campo ${campo} está vacío.`);
            }
        }
        req.body.id_permiso = 2; // enforce user privileges
        let hashedPass = bcrypt.hashSync(req.body.password, 10);
        if (!bcrypt.compareSync(req.body.pass2, hashedPass)) {
            // checks hashed password
            res.send(`password mismatch
                passwords are ${req.body.password}|${req.body.pass2}`);
        }
        req.body.password = hashedPass;
        let user = await Usuarios.create(req.body);
        req.session.userId = user.id;
        res.render("userAccount", { user: user, userLoggedStatus: userLoggedStatus });
    },

    entry: async function (req, res) {
        let userLoggedStatus = await recordUser(req, res);
        let user = await catchUser(req.cookies.userId, req.session.userId);
        if (!user) {
            // If no user is found, delete cookies&stop
            res.clearCookie("userId");
            res.render("login", { userLoggedStatus: userLoggedStatus });
        } else {
            res.render("userAccount", {
                user: user,
                userLoggedStatus: userLoggedStatus,
            });
        }
    },

    checkin: async function (req, res) {
        let userLoggedStatus;
        let user = await Usuarios.findOne({ where: { email: req.body.logInfo } });
        if (user) {
            let passMatch = await bcrypt.compare(req.body.password, user.password);
            if (!passMatch) {
                console.log(`passwords mismatch: ${req.body.password}, ${user.password}`);
                res.send("pass mismatch, needs a view");
            } else {
                console.log("got a user");
                // when checkbox is on, save a cookie. either way, proceed with user as param.
                if (req.body.remember == "remember") {
                    res.cookie("userId", user.id, {
                        maxAge: 1 * (1000 * 60 * 60 * 24), //in days
                    });
                }
                req.session.userId = user.id;
                userLoggedStatus = recordUser(req, res);
                res.render("userAccount", { user: user, userLoggedStatus: userLoggedStatus });
                res.end();
            }
        }
        userLoggedStatus = recordUser(req, res);
        res.render("userRegister", { userLoggedStatus: userLoggedStatus });
    },

    logout: (req, res) => {
        res.clearCookie("userId");
        req.session.userId = null;
        const userLoggedStatus = false;
        res.render("login", { userLoggedStatus: userLoggedStatus });
    },

    logEdit: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        let errors = validationResult(req);
        if (!errors.isEmpty()) {
            let paises = await Paises.findAll();
            paises.sort((a, b) => {
                if (a.pais < b.pais) {
                    return -1;
                } else {
                    return 1;
                }
            });
            res.render("userEdit", {
                errors: errors.errors,
                userLoggedStatus: userLoggedStatus,
                paises: paises,
            });
            res.end();
        }
        // Load user
        // validate each field
        if (req.body == undefined) {
            res.send("Necesita enviar algún dato!");
        } // update validation later
        for (let campo in req.body) {
            if (!req.body[campo].trim()) {
                res.send(`El campo ${campo} está vacío.`);
            }
            if (req.body[campo] == undefined) {
                res.send(`El campo ${campo} está vacío.`);
            }
        }
        let hashedPass = await bcrypt.hash(req.body.password, 10);
        if (!bcrypt.compareSync(req.body.pass2, hashedPass)) {
            //compares pass, already hashed
            res.send(`password mismatch
            passwords are ${req.body.password}|${req.body.pass2}`);
        } else {
            // save to DB
            let user = await Usuarios.findByPk(req.params.id);
            for (let campo in req.body) {
                if (campo != "password") {
                    user[campo] = req.body[campo];
                } else {
                    user.password = await bcrypt.hash(req.body.password, 10);
                }
            }
            await user.save();
            res.render("userAccount", { user: user, userLoggedStatus: userLoggedStatus });
        }
    },

    editor: async function (req, res) {
        let userLoggedStatus;
        // get the logged user
        let user;
        console.log(`${req.cookies.userId} || ${req.session.userId}) == ${req.params.id}`);
        let loggedUser = req.cookies.userId || req.session.userId;
        if (loggedUser == req.params.id) {
            console.log("true!");
            user = await catchUser(req.params.id);
        } else {
            res.send("error");
        }
        let paises = await Paises.findAll();
        console.log(user);
        user ? (userLoggedStatus = await recordUser(req, res)) : (userLoggedStatus = false);
        // check user db for matches, else discard cookie
        return res.render("userEdit", {
            user: user,
            paises: paises,
            userLoggedStatus: userLoggedStatus,
        });
    },

    cart: async (req, res) => {
        let loggedUser = req.cookies.userId || req.session.userId;
        const userLoggedStatus = await recordUser(req, res);
        const cartArray = await Productos_en_carrito.findAll({ where: { id_usuario: loggedUser } });
        if (cartArray.length == 0) {
            res.send("no cart, go shop");
            res.end;
        };
        let productIds = [];
        for (let cartItem of cartArray) {
            productIds.push(cartItem.dataValues.id_producto);
        }
        let productArray = await getProducts(productIds);
        console.log(productArray[0]);
        res.render("carrito", {
            userLoggedStatus: userLoggedStatus,
            cartArray: cartArray,
            productArray: productArray,
            total: 0,
        }); // Needs DB
    },
    saveToCart: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        let loggedUser = req.cookies.userId || req.session.userId;
        let cartEntry = {
            created_at: new Date(),
            updated_at: new Date(),
            id_usuario: loggedUser,
            id_producto: req.params.prodId,
            cantidad: "1",
        };
        let result = await Productos_en_carrito.create(cartEntry);
        res.redirect("/user/carrito");
    },
    account: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        let user;
        let loggedUser = req.cookies.userId || req.session.userId;
        if (loggedUser) {
            console.log("true!");
            user = await catchUser(loggedUser);
        } else {
            res.send("error");
        }
        res.render("userAccount", { user: user, userLoggedStatus: userLoggedStatus });
    },
    getDelete: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        let user = await catchUser(req.params.id);
        res.render("userDelete", { user: user, userLoggedStatus: userLoggedStatus });
    },
    delete: async function (req, res) {
        const userLoggedStatus = await recordUser(req, res);
        let loggedUser = req.cookies.userId || req.session.userId;
        if (loggedUser == req.params.id) {
            let user = await catchUser(req.params.id);
            user.destroy();
            res.render("success", { userLoggedStatus: userLoggedStatus });
        } else {
            res.send("Algo falló");
        }
    },
};

module.exports = controller;
