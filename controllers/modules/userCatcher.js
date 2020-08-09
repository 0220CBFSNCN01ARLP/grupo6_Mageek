// imports
const { Usuarios } = require("../../database/models");

// functions
const userCatcher = {
    // if no user is in cookies or session, return false
    recordUser: async function (req, res) {
        // Validate content
        console.log("about to start with the catcher");
        console.log(`mw: checking session/cookies ${req.session.userId} - ${req.cookies.userId}`);
        if (!req.session.userId && !req.cookies.userId) {
            console.log("no cookies or session");
            return false;
        }
        let credentials; // assign credentials
        req.session.userId
            ? (credentials = req.session.userId)
            : (credentials = req.cookies.userId);
        if (!isNaN(credentials)) {
            let user = await Usuarios.findByPk(credentials);
            return {
                userType: Number(user.id_permiso),
                userName: user.nombre_de_usuario,
            };
        }
        console.log("false :(");
        return false;
    },
};

module.exports = userCatcher;

module.exports = userCatcher;
