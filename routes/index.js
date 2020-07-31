var express = require("express");
var router = express.Router();
const productRouter = require("./product");
const userRouter = require("./user");
const apiProductosRouter = require("./api/productos");
const apiUsuariosRouter = require("./api/usuarios");
const controller = require(__dirname + "/../controllers/index");

/* GET home page. */
router.get("/", controller.index);
router.use("/product", productRouter);
router.use("/user", userRouter);
router.use("/api/productos", apiProductosRouter);
router.use("/api/usuarios", apiUsuariosRouter);

module.exports = router;
