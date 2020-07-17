const express = require("express");
const router = express.Router();
let controller = require(__dirname + "/../../controllers/api/usuarios");

router.get("/", controller.list);
router.get("/:id", controller.detail);
router.post("/crear", controller.create);
router.patch("/:id/actualizar", controller.update);
router.delete("/:id/borrar", controller.destroy);

module.exports = router;
