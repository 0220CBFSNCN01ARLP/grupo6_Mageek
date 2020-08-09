// Requirements
const express = require("express");
const router = express.Router();
const fs = require("fs");
const path = require("path");
const controller = require("../controllers/user");
const { mwLoggedIn } = require("../middlewares/mwIsLoggedIn");
const { check, validationResult, body } = require("express-validator");


// SET STORAGE W/ MULTER
const multer = require("multer");
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, "public/img/user_avatar");
    },
    filename: function (req, file, cb) {
        let name = Date.now() + path.extname(file.originalname);
        cb(null, name);
        req.body.pic = name;
    },
});
var upload = multer({ storage: storage });

// another middleware to check ADMIN privileges TO DO

/* /user */

// User register/logging handlers
router.get("/register", controller.userRegister);
router.post(
    "/register",
    upload.single("pic"),
    [
        check("nombre_de_usuario")
            .isLength({ min: 4 })
            .withMessage("Cantidad mínima de caracteres: 4."),
        check("nombre").isLength({ min: 2 }).withMessage("Cantidad mínima de caracteres: 2."),
        check("apellido").isLength({ min: 2 }).withMessage("Cantidad mínima de caracteres: 2."),
        check("email").isEmail().withMessage("Debe ingresar un email válido"),
        check("nacimiento").isDate(),
        check("calle").isLength().withMessage("Ingrese su dirección por favor"),
        check("id_pais").isNumeric({ min: 0 }).withMessage("Cantidad mínima de caracteres: 4."),
        check("password").isLength({ min: 4 }).withMessage("Cantidad mínima de caracteres: 4."),
        check("pass2").isLength({ min: 4 }).withMessage("Debe reingresar la contraseña."),
    ],
    controller.create
);

// Logout
router.post("/logout", controller.logout);
router.get("/logout", controller.logout);

// Landing page, redirects wether logged in
router.get("/login", mwLoggedIn, controller.entry);
router.post(
    "/login",
    [
        check("logInfo").isEmail().withMessage("Debe ingresar un email válido."),
        check("password").isLength().withMessage('La contraseña debe tener por lo menos 4 caracteres.'),
    ],
    controller.checkin
);

// Cart page

router.get("/cart", mwLoggedIn, controller.cart);
router.get("/saveToCart/:prodId", mwLoggedIn, controller.saveToCart)
router.delete("/removeFromCart",mwLoggedIn,controller.removeFromCart)

// success - redirects to homepage
router.get("/success", function (req, res, next) {
    res.render("success");
})
router.post("/success", function (req, res, next) {
    res.render("success");
})

// Read user
router.get("/account", mwLoggedIn, controller.account);

// Edit user
router.get("/edit/:id", mwLoggedIn, controller.editor);
router.patch(
    "/edit/:id",
    mwLoggedIn,
    [
        check("nombre_de_usuario")
            .isLength({ min: 4 })
            .withMessage("Cantidad mínima de caracteres: 4."),
        check("nombre").isLength({ min: 2 }).withMessage("Cantidad mínima de caracteres: 2."),
        check("apellido").isLength({ min: 2 }).withMessage("Cantidad mínima de caracteres: 2."),
        check("email").isEmail().withMessage("Debe ingresar un email válido"),
        check("nacimiento").isDate(),
        check("calle").isLength().withMessage("Ingrese su dirección por favor"),
        check("id_pais").isNumeric({ min: 0 }).withMessage("Cantidad mínima de caracteres: 4."),
        check("password").isLength({ min: 4 }).withMessage("Cantidad mínima de caracteres: 4."),
        check("pass2").isLength({ min: 4 }).withMessage("Debe reingresar la contraseña."),
    ],
    controller.logEdit
);

// Failed Register
router.get("/registerFailed", function (req,res,next) {
    res.render("registerFailed");
})

// Delete user
router.get("/delete/:id", controller.getDelete);
router.delete("/delete/:id", controller.delete);

module.exports = router;