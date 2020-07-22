var express = require("express");
var router = express.Router();
const path = require("path");
const controller = require(__dirname + "/../controllers/product");
const mwLoggedIn = require(path.join(__dirname, "..", "middlewares", "mwIsLoggedIn"));
const { Fotos } = require("../database/models");

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
router.post("/create", upload.array("pic", 7), controller.save);

// READ
router.get("/:id", controller.product);
module.exports = router;

// UPDATE

router.get("/:id/update", mwLoggedIn, controller.update);
router.put("/:id/update", mwLoggedIn, controller.stash);

// DESTROY
router.get("/:id/delete", mwLoggedIn, controller.delete);
router.delete("/:id/delete", mwLoggedIn, controller.destroy);
router.get("/:id/deletePicture/:fotoId", mwLoggedIn, controller.destroyPicture);
