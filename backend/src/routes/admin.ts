import { Router } from "express";
import { addExercise, deleteExercise, editExercise, searchExercise } from "../controllers/adminController";

const adminRouter = Router();

adminRouter.post('/add-exercise', addExercise);
adminRouter.delete('/delete-exercise/:id', deleteExercise);
adminRouter.patch('/edit-exercise/:id', editExercise)
adminRouter.get('/search-exercise',searchExercise)

export default adminRouter;