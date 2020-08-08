// Imports
const express = require("express");
const router = express.Router();
const productRouter = require("./product");
const userRouter = require("./user");
const apiProductosRouter = require("./api/productos");
const apiUsuariosRouter = require("./api/usuarios");
const controller = require("../controllers/index");
// const mwIsLoggedIn = require("../middlewares/mwIsLoggedIn.js")

/* GET home page. */
router.get("/", controller.index);
router.use("/product", productRouter);
router.use("/user", userRouter);
router.use("/api/productos", apiProductosRouter);
router.use("/api/usuarios", apiUsuariosRouter);

module.exports = router;
