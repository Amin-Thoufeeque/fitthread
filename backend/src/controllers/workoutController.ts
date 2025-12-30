import { Request, Response } from "express";
import Exercise from "../models/exercise_definition";

export const getExercises = async (req:Request,res:Response) => {

    const exercises = await Exercise.find()
    return res.json({exercises});
}