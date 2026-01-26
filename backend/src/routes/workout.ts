import { Router } from "express";
import { createWorkout, getExercises, getUserWorkoutByDate, getUserWorkoutDates } from "../controllers/workoutController";
 
const workoutRouter = Router();

workoutRouter.get('/',getExercises);
workoutRouter.post('/add',createWorkout);
workoutRouter.get('/dates/:userId',getUserWorkoutDates)
workoutRouter.get('/get-workout-byDate/:userId/:date',getUserWorkoutByDate)

export default workoutRouter;