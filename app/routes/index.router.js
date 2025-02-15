import hadithRouter  from "./hadith.router.js";
import croyanceRouter from "./croyance.router.js";
import express from "express";

const router = express.Router();

router.use(hadithRouter);
router.use(croyanceRouter);



export default router;