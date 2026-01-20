part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    required bool isLoading,
    required bool isError,
    Failure? failure,
    required bool isSuccess,
    required bool isAllSetCompleted,
    required double totalVolume,
    required int totalSet,

    required List<DateTime> dateList,

    required List<Workout> getWorkoutByDateList,
    required List<WorkoutExersiseModel> workoutsList,
    required DateTime? totalWorkoutDuration,
    required DateTime? workoutStartTime,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
    isLoading: false,
    isError: false,
    failure: null,
    isSuccess: false,
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
