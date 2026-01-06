import mongoose from "mongoose";



const SetSchema = new mongoose.Schema({

    set: {
        required: true,
        type: Number,
    },
    weightInKg: {
        type: Number,
        default: null
    },
    reps: {
        type: Number,
        default: null
    }
    ,
    timeInSeconds: {
        type: Number,
        default: null
    },
    completed: {
        type: Boolean,
        default: false
    }
},
{ _id: false },
);

const WorkoutExerciseSchema = new mongoose.Schema({

    exerciseDefinitionId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Exercise',
        required: true
    },
    quantifying: { type: String, required: true, enum: ['kg', 'reps', 'time'] },
    sets: [SetSchema],

}, { _id: false });

const WorkoutSchema = new mongoose.Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'User',
        required: true
    },
    startTime: {
        type: Date,
        required: true
    },
    title: {
        type: String,
        required: true,
    },
    totalWeightLifted: {
        type: Number,
        required: true
    }
    ,
    totalWorkoutSet: {
        type: Number,
        required: true
    },
    duration: {
        type: Number,
        required: true
    },

    exercises: [WorkoutExerciseSchema]
})

export default mongoose.model('Workout', WorkoutSchema);
// {
//   "userId": "66f7b3c1e4b0a2d9f1a9c001",
//   "title": "Push Day – Chest & Triceps",
//   "startTime": "2025-01-30T18:30:00.000Z",
//   "exercises": [
//     {
//       "exerciseDefinitionId": "66f7b3e4e4b0a2d9f1a9c010",
//       "quantifying": "kg",
//       "sets": [
//         {
//           "setNumber": 1,
//           "weightKg": 40,
//           "reps": 10,
//           "completed": true
//         },
//         {
//           "setNumber": 2,
//           "weightKg": 45,
//           "reps": 8,
//           "completed": true
//         }
//       ]
//     },
//     {
//       "exerciseDefinitionId": "66f7b3e4e4b0a2d9f1a9c020",
//       "quantifying": "reps",
//       "sets": [
//         {
//           "setNumber": 1,
//           "reps": 12,
//           "completed": true
//         },
//         {
//           "setNumber": 2,
//           "reps": 10,
//           "completed": false
//         }
//       ]
//     },
//     {
//       "exerciseDefinitionId": "66f7b3e4e4b0a2d9f1a9c030",
//       "quantifying": "time",
//       "sets": [
//         {
//           "setNumber": 1,
//           "timeSeconds": 45,
//           "completed": true
//         },
//         {
//           "setNumber": 2,
//           "timeSeconds": 60,
//           "completed": false
//         }
//       ]
//     }
//   ]
// }
