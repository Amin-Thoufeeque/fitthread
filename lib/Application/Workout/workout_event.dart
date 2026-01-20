part of 'workout_bloc.dart';

@freezed
class WorkoutEvent with _$WorkoutEvent {
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
  const factory WorkoutEvent.discardWorkout() = DiscardWorkout;
  const factory WorkoutEvent.checkSetCompletion() = CheckSetCompletion;
  const factory WorkoutEvent.addWorkout({
    required String title,
    required Duration workoutDuration,
    required String userId,
  }) = AddWorkout;
  const factory WorkoutEvent.getWorkoutDates({required String userId}) =
      GetWorkoutDates;
  const factory WorkoutEvent.getWorkoutByDate({
    required String userId,
    required String dateTime,
  }) = GetWorkoutByDate;
}
