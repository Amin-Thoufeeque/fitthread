part of 'exercise_bloc.dart';

@freezed
abstract class ExerciseState with _$ExerciseState {
  const factory ExerciseState({
    required bool isLoading,
    required bool isError,
    Failure? failure,
    required bool isSuccess,
    required List<Exercise> exerciseList,
    required List<Exercise> searchExerciseList,
  }) = _ExerciseState;
  factory ExerciseState.initial() => ExerciseState(
    isLoading: false,
    isError: false,
    failure: null,
    isSuccess: false,
    exerciseList: [],
    searchExerciseList: [],
  );
}
