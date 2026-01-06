import { Router } from "express";
import { createWorkout, getExercises } from "../controllers/workoutController";
 
const workoutRouter = Router();

workoutRouter.get('/',getExercises);
workoutRouter.post('/add',createWorkout);

export default workoutRouter;