import { Request, Response } from "express";
import Exercise from "../models/exercise_definition";
import Workout from "../models/workouts";
export const getExercises = async (req:Request,res:Response) => {

    const exercises = await Exercise.find()
    return res.json({exercises});
}

export const createWorkout = async (req:Request, res:Response) => {
  try {
    const {
      userId,
      title,
      startTime,
      exercises,
      totalWeightLifted,
      totalWorkoutSet,
      duration
    } = req.body;

    const workout = await Workout.create({
      userId,
      title,
      startTime,
      exercises,
      totalWeightLifted,
      totalWorkoutSet,
      duration
    });

    return res.status(201).json({
      success: true,
      workout,
    });
  } catch (error) {
    console.error(error);
    return res.status(500).json({
      success: false,
      message: "Failed to create workout",
    });
  }
};