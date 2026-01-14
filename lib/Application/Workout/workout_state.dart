part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required bool isSuccess,
    required bool isAllSetCompleted,
    required double totalVolume,
    required int totalSet,
    required List<Exercise> exerciseList,
    required List<DateTime> dateList,
    required List<Exercise> searchExerciseList,
    required List<Workout> getWorkoutByDateList,
    required List<WorkoutExersiseModel> workoutsList,
    required DateTime? totalWorkoutDuration,
    required DateTime? workoutStartTime,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
    isLoading: false,
    isError: false,
    errorMessage: '',
    exerciseList: [],
    isSuccess: false,
    searchExerciseList: [],
    workoutsList: [],
    totalVolume: 0,
    totalSet: 0,
    workoutStartTime: null,
    totalWorkoutDuration: null,
    isAllSetCompleted: false,
    dateList: [],
    getWorkoutByDateList: [],
  );
}
