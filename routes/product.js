var express = require("express");
var router = express.Router();
const path = require("path");
const controller = require("../controllers/product");
const { mwLoggedIn } = require("../middlewares/mwIsLoggedIn");
const { Fotos } = require("../database/models");
const { check, validationResult, body } = require("express-validator");

// SET STORAGE
const multer = require("multer");
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, "public/img/product");
    },
    filename: function (req, file, cb) {
        let name = Date.now() + path.extname(file.originalname);
        cb(null, name);
    },
});
var upload = multer({ storage: storage });

/* /product */
router.get("/", controller.none);

/* /add     CREATE */
// router.get("/add", mwLoggedIn, controller.create); // needs a new middleware, right now bounces guests
router.get("/add/:id",  controller.createOnCategory);
router.post(
    "/create",
    upload.array("pic", 7),
    [
        check("nombre")
            .isLength({ min: 5 })
            .withMessage("El nombre debe tener al menos 5 caracteres."),
        check("descripcion")
            .isLength({ min: 20 })
            .withMessage("La descripción debe tener al menos 20 caracteres."),
        check("stock").isNumeric().withMessage("El stock tiene que ser un número."),
        check("precio").isNumeric().withMessage("El precio tiene que ser un número."),
    ],
    controller.save
);

// READ
router.get("/:id", controller.product);
module.exports = router;

// UPDATE

router.get("/:id/update", mwLoggedIn, controller.update);
router.patch(
    "/:id/update",
    [
        check("nombre")
            .isLength({ min: 5 })
            .withMessage("El nombre debe tener al menos 5 caracteres."),
        check("descripcion")
            .isLength({ min: 20 })
            .withMessage("La descripción debe tener al menos 20 caracteres."),
        check("stock").isNumeric().withMessage("El stock tiene que ser un número."),
        check("precio").isNumeric().withMessage("El precio tiene que ser un número."),
    ],
    mwLoggedIn,
    controller.stash
);

// DESTROY
router.get("/:id/delete", mwLoggedIn, controller.delete);
router.delete("/:id/delete", mwLoggedIn, controller.destroy);
router.get("/:id/deletePicture/:fotoId", mwLoggedIn, controller.destroyPicture);
