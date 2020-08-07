// Imports
const { Usuarios, Paises, Permisos } = require("../database/models");
const { recordUser } = require("../controllers/modules/userCatcher");

// functions

const logMiddleware = {
    // if no user is in cookies or session, default to index
    mwLoggedIn: async function (req, res, next) {
        const userLoggedStatus = await recordUser(req, res);
        // Validate content
        console.log(`mw: checking session/cookies ${req.session.userId} - ${req.cookies.userId}`);
        if (req.session.userId == undefined && req.cookies.userId == undefined) {
            console.log("no cookies or session");
            res.render("login", { userLoggedStatus: userLoggedStatus });
            res.end();
        }
        let credentials; // assign credentials
        req.session.userId ? (credentials = req.session.userId) : (credentials = req.cookies.userId);
        if (!isNaN(credentials)) {
            let user = await Usuarios.findByPk(credentials, {
                include: [
                    { model: Paises, as: "paises" },
                    { model: Permisos, as: "permisos" },
                ],
            });
            if (user) {
                next();
            } else {
                res.clearCookie("userId");
                req.session.userId = null;
                res.render("login", { userLoggedStatus: userLoggedStatus });
            }
        }
    },
};
module.exports = logMiddleware;
