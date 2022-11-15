const {Router} = require("express")
const {getheroes, getheroesByID, deleteheroesByID, addheroes, updateheroesByUsuario} = require("../controllers/heroes")
const router = Router()

//http://localhost:4008/api/v1/heroes

/// GET ///
router.get("/", getheroes)
router.get("/id/:id", getheroesByID)

/// POST ///
router.post("/", addheroes)

/// PUT ///
router.put("/", updateheroesByUsuario)

/// DELETE ///
router.delete("/", deleteheroesByID)

module.exports = router