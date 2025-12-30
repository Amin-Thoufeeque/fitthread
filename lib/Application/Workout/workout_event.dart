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
}
