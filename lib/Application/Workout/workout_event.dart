part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.getExercise() = GetExercise;
  const factory WorkoutEvent.addExercise({
    required String name,
    required String quantifying,
    required String muscleGroup,
    required String description,
    required String userId,
  }) = AddExercise;
  const factory WorkoutEvent.deleteExercise({required String id}) =
      DeleteExercise;
  const factory WorkoutEvent.editExercise({required Exercise exercise}) =
      EditExercise;
  const factory WorkoutEvent.getSelectedExercise({
    required List<Exercise> selectedExercises,
  }) = GetSelectedExercise;
  const factory WorkoutEvent.getWorkoutExercise({
    required List<Exercise> selectedExercises,
  }) = GetWorkoutExercise;
  const factory WorkoutEvent.addWorkoutSet({required int workoutIndex}) =
      AddWorkoutSet;
  const factory WorkoutEvent.deleteWorkoutSet({
    required int workoutIndex,
    required int setIndex,
  }) = DeleteWorkoutSet;
  const factory WorkoutEvent.completeWorkoutSet({
    required int workoutIndex,
    required int setIndex,
    required String weight,
    required String time,
    required String reps,
  }) = CompleteWorkoutSet;
  const factory WorkoutEvent.removeSelectedExercise({
    required int selectedWorkoutIndex,
  }) = RemoveSelectedExercise;
  const factory WorkoutEvent.addNewSelectedExercise({
    required List<Exercise> newExerciseList,
  }) = AddNewSelectedExercise;
  const factory WorkoutEvent.startWorkoutTimer() = StartWorkoutTimer;
  const factory WorkoutEvent.addWorkout({
    required List<WorkoutExersiseModel> workoutExerciseList,
    required String title,
    required DateTime workoutDuration,
    required int totalWeightLifted,
  }) = AddWorkout;
}
