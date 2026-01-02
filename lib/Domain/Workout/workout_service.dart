import 'package:dartz/dartz.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Domain/models/workout_exercise_model.dart';

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
  Future<Either<Failure, Unit>> addWorkout({
    required List<WorkoutExersiseModel> workoutExerciseList,
    required String title,
    required DateTime workoutDuration,
    required int totalWeightLifted,
  });
}
