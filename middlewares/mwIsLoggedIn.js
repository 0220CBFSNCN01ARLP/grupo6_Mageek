const fs = require("fs");
const path = require("path");
const pathDB = path.join(__dirname, "..", "data", "users.json");
const { Usuarios, Paises, Permisos } = require("../database/models");

// if logged in, proceed to userAccount
async function middlewareRedirect(req, res, next) {
    // Validate content
    if (req.session.userId == undefined && req.cookies.userId == undefined) {
        res.render("login");
    }
    let creds;// assign creds
    req.session.userId ? (creds = req.session.userId) : (creds = req.cookies.userId);
    if (creds != "") {
        let user = await Usuarios.findByPk(creds, {
            include: [
                { model: Paises, as: "paises" },
                { model: Permisos, as: "permisos" },
            ],
        });
        if (user) {
            next();
        }
        res.clearCookie("userId");
        req.session.userId = null;
        res.render("login");
    }
}
module.exports = middlewareRedirect;
