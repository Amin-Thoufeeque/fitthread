import { Router } from "express";
import { getExercises } from "../controllers/workoutController";
 
const workoutRouter = Router();

workoutRouter.get('/',getExercises);

export default workoutRouter;