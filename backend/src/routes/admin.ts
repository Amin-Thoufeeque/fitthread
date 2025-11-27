import { Router } from "express";
import { addExercise } from "../controllers/adminController";

const adminRouter = Router();

adminRouter.post('/add-exercise', addExercise)

export default adminRouter;