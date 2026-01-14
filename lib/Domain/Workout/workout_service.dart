import 'package:dartz/dartz.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Domain/models/workout_exercise_model.dart';
import 'package:fitthread/Domain/models/workout_model.dart';

abstract class WorkoutService {
  Future<Either<Failure, Unit>> addExercise({
    required String name,
    required String quantifying,
    required String muscleGroup,
    required String description,
    required String userId,
  });
  Future<Either<Failure, List<Exercise>>> getExercises();
  Future<Either<Failure, Unit>> editExercise({required Exercise exercise});
  Future<Either<Failure, Unit>> deleteExercise({required String exerciseId});
  Future<Either<Failure, List<Exercise>>> searchExercise({
    required String query,
  });
  Future<Either<Failure, Unit>> addWorkout({
    required List<WorkoutExersiseModel> workoutExerciseList,
    required String title,
    required DateTime workoutStartTime,
    required double totalWeightLifted,
    required int totalWorkoutDuration,
    required String userId,
    required int totalWorkoutSet,
  });
  Future<Either<Failure, List<DateTime>>> getWorkoutDates({
    required String userId,
  });
  Future<Either<Failure, List<Workout>>> getWorkoutByDate({
    required String userId,
    required String dateTime,
  });
}
