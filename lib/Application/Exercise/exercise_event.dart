part of 'exercise_bloc.dart';

@freezed
class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.getExercise() = GetExercise;
  const factory ExerciseEvent.addExercise({
    required String name,
    required String quantifying,
    required String muscleGroup,
    required String description,
    required String userId,
  }) = AddExercise;
  const factory ExerciseEvent.deleteExercise({required String id}) =
      DeleteExercise;
  const factory ExerciseEvent.editExercise({required Exercise exercise}) =
      EditExercise;

  const factory ExerciseEvent.searchExercise(String query) = SearchExercise;
}
