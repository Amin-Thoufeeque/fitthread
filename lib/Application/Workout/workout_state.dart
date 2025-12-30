part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required bool isSuccess,
    required List<Exercise> exerciseList,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
    isLoading: false,
    isError: false,
    errorMessage: '',
    exerciseList: [],
    isSuccess: false,
  );
}
