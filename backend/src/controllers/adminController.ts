import { Request, Response } from "express";
import Exercise from "../models/exercise_definition";

export const addExercise = async (req: Request, res: Response) => {
    try {
        const { name, quantifying, description, muscleGroup } = req.body;
        let exercise = new Exercise({
            name,
            quantifying,
            description,
            muscleGroup,
        })
        exercise = await exercise.save();
        res.json(exercise)


    } catch (e) {
        res.status(500).json({ error: 'Error ' + e })
    }
}