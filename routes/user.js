// Requirements
const express = require("express");
const router = express.Router();
const fs = require("fs");
const path = require("path");
const controller = require(path.join(
    __dirname,
    "..",
    "controllers",
    "user"
));
const mwLoggedIn = require(path.join( //checks logged status
    __dirname,
    "..",
    "middlewares",
    "mwIsLoggedIn"
));


// SET STORAGE W/ MULTER
const multer = require("multer");
var storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, "data/user_avatar");
    },
    filename: function (req, file, cb) {
        cb(
            null,
            Date.now() + path.extname(file.originalname)
        );
    },
});
var upload = multer({ storage: storage });

// another middleware to check ADMIN privileges TO DO

/* /user */

// User register/logging handlers
router.get("/register", controller.userRegister);
router.post(
    "/register",
    upload.single("file"),
    controller.create
);

// Logout
router.post("/logout", controller.logout);

// Landing page, redirects wether logged in

router.get("/login", mwLoggedIn, controller.entry);
router.post("/login", controller.checkin);

// Cart page

router.get("/cart",mwLoggedIn, controller.cart);

// add products

router.get("/success", function (req, res, next) {
    res.render("success");
})

router.post("/success", function (req, res, next) {
    res.render("success");
})
// Read user
router.get("/account", controller.account);

// Edit user
router.get("/edit", controller.editor);
router.put("/edit/:id", mwLoggedIn, controller.logEdit);

// Failed Register
router.get("/registerFailed", function (req,res,next) {
    res.render("registerFailed");
})



module.exports = router;
