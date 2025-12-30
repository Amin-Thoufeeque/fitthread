import { Router } from "express";
import { addExercise, deleteExercise, editExercise } from "../controllers/adminController";

const adminRouter = Router();

adminRouter.post('/add-exercise', addExercise);
adminRouter.delete('/delete-exercise/:id', deleteExercise);
adminRouter.patch('/edit-exercise/:id', editExercise)

export default adminRouter;