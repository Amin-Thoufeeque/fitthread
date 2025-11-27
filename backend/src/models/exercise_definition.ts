import mongoose from "mongoose";

const ExerciseDefinitionSchema = new mongoose.Schema({
    name: { type: String, required: true, unique: true },
    quantifying: {
        required: true,
        enum: ['kg', 'reps', 'time'],
        type: String
    },
    description: {
        type: String,
        required: true,
    },
    muscleGroup: {
        type: String,
        required: true
    }
})

const Exercise= mongoose.model('Exercises', ExerciseDefinitionSchema);
export default Exercise