import { Request, Response } from "express";
import Exercise from "../models/exercise_definition";
import User from "../models/user";

export const addExercise = async (req: Request, res: Response) => {
  try {
    const { name, quantifying, description, muscleGroup, userId } = req.body;
    const user = await User.findById(userId);
    if (!user) {
      return res.status(400).json({ msg: 'User not found' });
    }
    if (user.role == "user") {
      return res.status(400).json({ msg: 'admin not found' });
    }
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

export const deleteExercise = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    console.log(id);
    const deletedExercise = await Exercise.findByIdAndDelete(id);
    if (!deletedExercise) {
      return res.status(400).json({ msg: 'Exercise not found' });
    }
    return res.json(({ status: true }))
  } catch (e) {
    res.status(500).json({ error: 'Error ' + e })
  }
}

export const editExercise = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;
    const { name, quantifying, description, muscleGroup } = req.body;
    const updatedExercise = await Exercise.findByIdAndUpdate(id, { name, quantifying, description, muscleGroup }, { new: true, runValidators: true });
    if (!updatedExercise) {
      return res.status(400).json({ msg: 'Exercise not found' });
    }
    return res.json(({ status: true }))
  } catch (e) {
    res.status(500).json({ error: 'Error ' + e })
  }
}

export const searchExercise = async (req: Request, res: Response) => {
  try {
    const q = String(req.query.q || "");
    
    const exercises = await Exercise.find({
      $or: [
        { name: { $regex: q, $options: "i" } }
        ,
        { muscleGroup: { $regex: q, $options: "i" } }
      ],
    }).limit(20);

    return res.json(({ status: true, exercises: exercises }))
  } catch (e) {
   
    res.status(500).json({ error: 'Error ' + e })
  }
}