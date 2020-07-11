var express = require("express");
var router = express.Router();
const path = require("path");
const fs = require("fs");
const controller = require(__dirname +
    "/../controllers/product"); //reformat?
const mwLoggedIn = require(path.join(
    __dirname,
    "..",
    "middlewares",
    "mwIsLoggedIn"
));
// SET STORAGE
const multer = require("multer");
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, "public/img/product");
    },
    filename: function (req, file, cb) {
        cb(
            null,
            Date.now() + path.extname(file.originalname)
        );
    },
});
var upload = multer({ storage: storage });

/* /product */
router.get("/", controller.none);

/* /add     product */
router.get("/add", mwLoggedIn, controller.create); // needs a new middleware, right now bounces guests
router.post("/add", upload.single("file"), controller.save);

// Get a product
router.get("/:id", controller.product);
module.exports = router;
