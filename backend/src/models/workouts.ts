import mongoose from "mongoose";
import { getDefaultAutoSelectFamilyAttemptTimeout } from "net";

const SetSchema = new mongoose.Schema({
    setNumber: {
        required: true,
        type: Number,
    },
    weightKg: {
        type: Number,
        default: null
    },
    reps: {
        type: Number,
        default: null
    }
    ,
    timeSeconds: {
        type: Number,
        default: null
    },
    completed: {
        type: Boolean,
        default: false
    }
});

const WorkoutExerciseSchema = new mongoose.Schema({
    exerciseDefinitionId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Exercise',
        required: true
    },
    quantifying: { type: String, required: true, enum: ['kg', 'reps', 'time'] },
    sets: [SetSchema]
});

const WorkoutSchema = new mongoose.Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'User',
        required: true
    },
    startTime: {
        type: Date,
        default: Date.now
    },
    name: {
        type: String,
        required: true,
    }
    ,
    exercises: [WorkoutExerciseSchema]
})

export default mongoose.model('Workout', WorkoutSchema);