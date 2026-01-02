part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required bool isSuccess,
    required double totalVolume,
    required int totalSet,
    required List<Exercise> exerciseList,
    required List<Exercise> selectedExerciseList,
    required List<WorkoutExersiseModel> workoutsList,
    required DateTime? workoutStartTime,
    required Duration totalWorkoutDuration,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
    isLoading: false,
    isError: false,
    errorMessage: '',
    exerciseList: [],
    isSuccess: false,
    selectedExerciseList: [],
    workoutsList: [],
    totalVolume: 0,
    totalSet: 0,
    workoutStartTime: null,
    totalWorkoutDuration: Duration.zero,
  );
}
