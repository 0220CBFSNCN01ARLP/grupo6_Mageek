const fs = require("fs");
const path = require("path");
const bcrypt = require("bcrypt");
if (!loggedUser) var loggedUser = {}; // Instances loggedUser in case it wasn't already
const pathDB = path.join(__dirname, "..", "data", "users.json");
const { Usuarios, Paises } = require("../database/models");
const { serialize } = require("v8");

// module
const catchUser = async function (cookie, session) {
    if (cookie || session) {
        return await db.Usuarios.findOne({
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

    create: function (req, res, next) {
        //Creates a new user POST
        //  Load user DB
        let user = {
            //Load user
            id: users.length, // new code required: check last user's id, then increase by 1
            first_name: req.body.name,
            last_name: req.body.lastName,
            email: req.body.email,
            // image: req.file.filename,
        };
        //   validate password, otherwise error
        const hash = function () {
            if (req.body.pass) return bcrypt.hashSync(req.body.pass, 10);
        };
        user.password = hash();
        if (req.body.pass2) {
            if (bcrypt.compareSync(req.body.pass2, user.password)) {
                // Success validating
                users.push(user);
                // Save new array
                fs.writeFileSync(
                    path.join(__dirname, "..", "data", "users.json"),
                    JSON.stringify(users, null, 4)
                );

                res.redirect("success");
            }
        } else {
            $2b$10$m0KO2n0mMbo99.bft8NjjOAKEDpWbaTuN6NnPW / LtQ5ABvrXTScha;
            console.log("algo malio sal");
        }
        res.send(req.body);
    },

    entry: async function (req, res, next) {
        let user = await catchUser(req.cookies.userId, req.session.userId);

        if (!user) {
            // If there's no user found, delete cookies, notify&stop
            res.clearCookie("userId");
            res.render("login");
        } else {
            /* console.log(`
            user: ${user}
            cookies: ${req.cookies.userId}
            session: ${req.session.userId}`);   // small dev tool, leave unscathed */
            res.render("userAccount", {
                user: user,
            });
        }
    },

    checkin: async function (req, res, next) {
        console.log("starting checkin");
        let user = await db.Usuarios.findOne({
            where: {
                email: req.body.loginCreds, //change variable names please
            },
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
        res.clearCookie("userId"); // maybe as a middleware?
        req.session.userId = null;
        res.render("login");
    },

    logEdit: (req, res, next) => {
        // load DB
        const userId = req.params.id;
        //Load user
        let user;
        users.forEach((userA) => {
            if (userA.id == userId) {
                user = userA;
            }
        });
        // handle POST form
        // name lastName email
        // check each field for existance
        // enact changes
        if (req.body.name != "") {
            console.log("Llegamos! El usuario era ", user.first_name);
            user.first_name = req.body.name;
        }
        if (req.body.lastName != "") {
            user.last_name = req.body.lastName;
        }
        if (req.body.email != "") {
            user.email = req.body.email;
        }
        console.log("el req.body es ", req.body);
        // save to DB
        // user.id = users [users.length-1].id+1;
        users.push(user);
        let loggedUser = user;
        fs.writeFileSync(pathDB, JSON.stringify(users, null, 4));
        return res.render("userAccount", {
            loggedUser: loggedUser,
        });
    },

    editor: function (req, res, next) {
        // get the logged user
        let user = catchUser(req.cookies.userId, req.session.userId);
        // check user db for matches, else discard cookie
        let loggedUser = user;
        return res.render("userEdit", {
            loggedUser: loggedUser,
        });
        // save to loggedUser
        // res.render("userEdit"); // add {loggedUser:loggedUser
    },

    cart: (req, res, next) => {
        res.render("cart", { title: "Express" }); // Needs DB
    },

    account: async function (req, res, next) {
        let user = await db.Usuarios.findByPk(101);
        res.render("userAccount", { user: user });
    },
};

module.exports = controller;
