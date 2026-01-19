import { Request, Response } from "express";
import Exercise from "../models/exercise_definition";
import Workout from "../models/workouts";
import workouts from "../models/workouts";
import mongoose from "mongoose";
import User from "../models/user";
export const getExercises = async (req: Request, res: Response) => {

  const exercises = await Exercise.find()
  return res.json({ exercises });
}

export const createWorkout = async (req: Request, res: Response) => {
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
    await User.findByIdAndUpdate(
      userId,
      {
        $inc: {
          totalWorkouts: 1,
        },
      },
      { runValidators: true }
    );
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

export const getUserWorkoutDates = async (req: Request, res: Response) => {
  try {
    const { userId } = req.params;
    const workoutDates = await workouts.distinct("startTime", { userId: new mongoose.Types.ObjectId(userId), })
    res.status(200).json({
      dates: workoutDates,
    });
  } catch (e) {
    res.status(500).json({ error: "Error: " + e })
  }
}

export const getUserWorkoutByDate = async (req: Request, res: Response) => {
  try {
    const { userId, date } = req.body;
    const startOfDay = new Date(date);
    startOfDay.setHours(0, 0, 0, 0);

    const endOfDay = new Date(date);
    endOfDay.setHours(23, 59, 59, 999);

    const userWorkouts = await workouts.find({
      userId: new mongoose.Types.ObjectId(userId),
      startTime: {
        $gte: startOfDay,
        $lte: endOfDay,
      },
    }).populate({
      path: 'exercises.exerciseDefinitionId',
      model: 'Exercises',
    });;

    res.status(200).json({
      workouts: userWorkouts,
    });
  } catch (e) {
    res.status(500).json({ error: "Error: " + e })
  }
}