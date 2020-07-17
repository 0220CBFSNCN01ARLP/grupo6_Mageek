const bcrypt = require("bcrypt");
const { Usuarios, Paises, Permisos } = require("../database/models");

// module
const catchUser = async function (cookie, session) {
    if (cookie || session) {
        return await Usuarios.findOne({
            where: { id: cookie || session },
        });
    } else {
        console.log(`cookie: ${cookie} · session: ${session}`); // Load user in cookies or session
    }
};

const controller = {
    userRegister: async function (req, res, next) {
        // Register GET
        let paises = await Paises.findAll();
        res.render("userRegister", { paises: paises });
    },

    create: async function (req, res, next) {
        // validate user
        for (let campo in req.body) {
            if (!req.body[campo].trim()) {
                res.send(`El campo ${campo} está vacío.`);
            }
        }
        req.body.id_permiso = 2; // enforce user privileges
        let hashedPass = bcrypt.hashSync(req.body.password, 10);
        if (!bcrypt.compareSync(req.body.pass2, hashedPass)) {
            //compares pass, already hashed
            res.send(`password mismatch
                passwords are ${req.body.password}|${req.body.pass2}`);
        }
        req.body.password = hashedPass;
        let user = await Usuarios.create(req.body);
        req.session.userId = user.id;
        res.render("userAccount", { user: user });
    },

    entry: async function (req, res, next) {
        let user = await catchUser(req.cookies.userId, req.session.userId);

        if (!user) {
            // If there's no user found, delete cookies, notify&stop
            res.clearCookie("userId");
            res.render("login");
        } else {
            res.render("userAccount", {
                user: user,
            });
        }
    },

    checkin: async function (req, res, next) {
        let user = await Usuarios.findOne({
            where: { email: req.body.email },
        });
        const passMatch = await bcrypt.compare(req.body.password, user.password);
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
            res.render("userAccount", {
                user: user,
            });
            res.end();
        }
    },

    logout: (req, res, next) => {
        res.clearCookie("userId");
        req.session.userId = null;
        res.render("login");
    },

    logEdit: async function (req, res, next) {
        // Load user
        // validate each field
        if (req.body == undefined) {res.send('Necesita enviar algún dato!')}// update validation later
        let campos = Object.entries(req.body);
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
                if (campo != "password"){
                    user[campo] = req.body[campo]
                } else {
                    user.password = await bcrypt.hash(req.body.password,10)
                }
            }
            await user.save();
            res.render("userAccount", { user: user });
        }
    },

    editor: async function (req, res, next) {
        // get the logged user
        // let user = catchUser(req.cookies.userId, req.session.userId);
        let user;
        console.log(`${req.cookies.userId} || ${req.session.userId}) == ${req.params.id}`);
        let loggedUser = (req.cookies.userId || req.session.userId);
        if ( loggedUser == req.params.id) {
            console.log("true!");
            user = await catchUser(req.params.id);
        } else {
            res.send("error");
        }
        let paises = await Paises.findAll();
        // check user db for matches, else discard cookie
        return res.render("userEdit", {
            user: user,
            paises: paises,
        });
    },

    cart: (req, res, next) => {
        res.render("cart", { title: "Express" }); // Needs DB
    },

    account: async function (req, res, next) {
        let user;
        let loggedUser = (req.cookies.userId || req.session.userId);
        if (loggedUser) {
            console.log("true!");
            user = await catchUser(loggedUser);
        } else {
            res.send("error");
        }
        res.render("userAccount", { user: user });
    },
    getDelete: async function (req, res, next) {
        let user = await catchUser(req.params.id)
        res.render("userDelete", { user: user });
    },
    delete: async function(req, res, next) {
        let loggedUser = (req.cookies.userId || req.session.userId);
        if ( loggedUser == req.params.id) {
            let user = await catchUser(req.params.id);
            user.destroy();
            res.render("success");
        } else {
            res.send('Algo falló')
        }
    },
};

module.exports = controller;
