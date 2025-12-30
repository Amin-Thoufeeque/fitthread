import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Domain/models/workout_exercise_model.dart';
import 'package:fitthread/Domain/models/workout_model.dart';
import 'package:fitthread/Domain/models/workout_set_model.dart';

final exerciseModel1 = Exercise(
  id: '1',
  name: 'Pec deck',
  quantifying: 'kg',
  muscleGroup: 'Chest',
  description: 'great workout',
);
final exerciseModel2 = Exercise(
  id: '2',
  name: 'Bench Press',
  quantifying: 'time',
  muscleGroup: 'Chest',
  description: 'great workout',
);
List<Exercise> dummyexerlist = [exerciseModel1, exerciseModel2];
final workout = WorkoutSet(id: '1', set: 2, reps: 13);
final workout1 = WorkoutSet(id: '2', set: 3, reps: 15);

final workoutExercise = WorkoutExersiseModel(
  id: '1',
  exerciseId: exerciseModel1.id,
  quantifying: 'kg',
  sets: [workout, workout1],
);
final workoutExercise1 = WorkoutExersiseModel(
  id: '2',
  exerciseId: exerciseModel2.id,
  quantifying: 'kg',
  sets: [workout, workout1],
);
List<WorkoutExersiseModel> workoutsList = [workoutExercise, workoutExercise1];
final workoutModel = Workout(
  id: '1',
  userId: '2',
  title: 'Evening workout',
  startTime: DateTime.now(),
  exercises: workoutsList,
);
