import { Router } from "express";
import { createWorkout, getExercises, getUserWorkoutByDate, getUserWorkoutDates } from "../controllers/workoutController";
 
const workoutRouter = Router();

workoutRouter.get('/',getExercises);
workoutRouter.post('/add',createWorkout);
workoutRouter.get('/dates/:userId',getUserWorkoutDates)
workoutRouter.post('/get-workout-byDate',getUserWorkoutByDate)

export default workoutRouter;