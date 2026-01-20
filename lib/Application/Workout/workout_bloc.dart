import 'package:fitthread/Domain/Network/Failure/failure.dart';
import 'package:fitthread/Domain/Workout/workout_service.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Domain/models/workout_exercise_model.dart';
import 'package:fitthread/Domain/models/workout_model.dart';
import 'package:fitthread/Domain/models/workout_set_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: depend_on_referenced_packages
import 'package:injectable/injectable.dart';
part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutService workoutService;
  WorkoutBloc(this.workoutService) : super(WorkoutState.initial()) {
    on<GetWorkoutExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final workoutList = List<WorkoutExersiseModel>.from(state.workoutsList);
      final newWorkouts = event.selectedExercises.asMap().entries.map((entry) {
        return WorkoutExersiseModel(
          // index
          exercise: entry.value,
          quantifying: entry.value.quantifying,
          sets: [],
        );
      }).toList();
      workoutList.addAll(newWorkouts);
      emit(state.copyWith(workoutsList: workoutList, isLoading: false));
    });
    on<AddWorkoutSet>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final workouts = List<WorkoutExersiseModel>.from(state.workoutsList);

      final oldWorkout = workouts[event.workoutIndex];

      final newSetNumber = oldWorkout.sets.length + 2;

      final newSet = WorkoutSet(
        set: newSetNumber,
        reps: oldWorkout.quantifying == 'reps' ? 0 : null,
        timeInSeconds: oldWorkout.quantifying == 'time' ? 0 : null,
        weightInKg: oldWorkout.quantifying == 'kg' ? 0 : null,
        isCompleted: false,
      );

      final updatedWorkout = oldWorkout.copyWith(
        sets: [...oldWorkout.sets, newSet],
      );

      workouts[event.workoutIndex] = updatedWorkout;

      emit(state.copyWith(isLoading: false, workoutsList: workouts));
    });
    on<DeleteWorkoutSet>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final workouts = List<WorkoutExersiseModel>.from(state.workoutsList);
      final set = workouts[event.workoutIndex].sets;

      double totalVolume = state.totalVolume;
      int totalSets = state.totalSet;
      final rep = double.tryParse(set[event.setIndex].reps.toString());
      final weight = set[event.setIndex].weightInKg;

      if (rep == null || weight == null) {
        emit(state.copyWith(totalVolume: 0));
      } else {
        totalVolume = totalVolume - rep * weight;
        totalSets = totalSets - 1;
      }

      set.removeAt(event.setIndex);

      emit(
        state.copyWith(
          isLoading: false,
          workoutsList: workouts,
          totalVolume: totalVolume,
          totalSet: totalSets,
        ),
      );
    });
    on<CompleteWorkoutSet>((event, emit) async {
      final workouts = List<WorkoutExersiseModel>.from(state.workoutsList);

      final workout = workouts[event.workoutIndex];

      final sets = List<WorkoutSet>.from(workout.sets);

      final currentSet = sets[event.setIndex];

      final updatedSet = currentSet.isCompleted
          ? currentSet.copyWith(isCompleted: false)
          : currentSet.copyWith(
              reps: int.tryParse(event.reps),
              weightInKg: double.tryParse(event.weight),
              timeInSeconds: double.tryParse(event.time),
              isCompleted: true,
            );

      sets[event.setIndex] = updatedSet;
      workouts[event.workoutIndex] = workout.copyWith(sets: sets);
      double totalVolume = state.totalVolume;
      int totalSets = state.totalSet;
      final rep = double.tryParse(event.reps);
      final weight = updatedSet.weightInKg;
      if (updatedSet.isCompleted) {
        if (rep == null && weight == null) {
          emit(state.copyWith(totalVolume: 0));
        } else {
          totalVolume = totalVolume + rep! * weight!;
          totalSets = totalSets + 1;
        }
      } else {
        if (rep == null && weight == null) {
          emit(state.copyWith(totalVolume: 0));
        } else {
          totalVolume = totalVolume - rep! * weight!;
          totalSets = totalSets - 1;
        }
      }

      emit(
        state.copyWith(
          isLoading: false,
          workoutsList: workouts,
          totalVolume: totalVolume,
          totalSet: totalSets,
        ),
      );
    });
    on<RemoveSelectedExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final workouts = List<WorkoutExersiseModel>.from(state.workoutsList);
      double totalVolume = state.totalVolume;
      int totalSets = state.totalSet;

      for (final set in workouts[event.selectedWorkoutIndex].sets) {
        final reps = set.reps;
        final weight = set.weightInKg;

        if (reps == null || weight == null) continue;

        totalVolume -= reps * weight;
        totalSets -= 1;
      }

      workouts.removeAt(event.selectedWorkoutIndex);

      emit(
        state.copyWith(
          isLoading: false,
          workoutsList: workouts,

          totalSet: totalSets,
          totalVolume: totalVolume,
        ),
      );
    });
    on<AddNewSelectedExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final workouts = List<WorkoutExersiseModel>.from(state.workoutsList);

      final newWorkoutList = event.newExerciseList.asMap().entries.map((entry) {
        return WorkoutExersiseModel(
          exercise: entry.value,
          quantifying: entry.value.quantifying,
          sets: [],
        );
      }).toList();
      workouts.addAll(newWorkoutList);

      emit(state.copyWith(isLoading: false, workoutsList: newWorkoutList));
    });
    on<StartWorkoutTimer>((event, emit) {
      emit(
        state.copyWith(
          totalWorkoutDuration: state.totalWorkoutDuration ?? DateTime.now(),
          workoutStartTime: DateTime.now(),
        ),
      );
    });
    on<DiscardWorkout>((event, emit) {
      emit(WorkoutState.initial());
    });
    on<CheckSetCompletion>((event, emit) {
      if (state.workoutsList.isEmpty) {
        emit(state.copyWith(isAllSetCompleted: false));
      }

      final bool result = state.workoutsList.every(
        (workout) => workout.sets.every((set) => set.isCompleted),
      );
      print(result);
      emit(state.copyWith(isAllSetCompleted: result));
    });
    on<AddWorkout>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      final addWorkoutFunc = await workoutService.addWorkout(
        userId: event.userId,
        totalWorkoutSet: state.totalSet,
        workoutExerciseList: state.workoutsList,
        title: event.title,
        workoutStartTime: state.workoutStartTime!,
        totalWeightLifted: state.totalVolume,
        totalWorkoutDuration: event.workoutDuration.inSeconds,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (r) => emit(state.copyWith(isLoading: false)),
      );
    });
    on<GetWorkoutDates>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addWorkoutFunc = await workoutService.getWorkoutDates(
        userId: event.userId,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (datesList) => emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            dateList: datesList,
          ),
        ),
      );
    });
    on<GetWorkoutByDate>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addWorkoutFunc = await workoutService.getWorkoutByDate(
        userId: event.userId,
        dateTime: event.dateTime,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (workoutList) => emit(
          state.copyWith(
            isLoading: false,
            isSuccess: true,
            getWorkoutByDateList: workoutList,
          ),
        ),
      );
    });
  }
}
