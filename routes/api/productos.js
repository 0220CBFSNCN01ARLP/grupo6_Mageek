const express = require("express");
const router = express.Router();
let apiProductosController = require(__dirname + "/../../controllers/api/productos");

router.get("/", apiProductosController.list); //all
router.get("/:id", apiProductosController.detail); //detalle
router.post("/crear", apiProductosController.create); //crear
router.patch("/:id/actualizar", apiProductosController.update); //actualizar
router.delete("/:id/borrar", apiProductosController.destroy); //borrar

module.exports = router;