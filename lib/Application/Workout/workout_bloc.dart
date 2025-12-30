import 'package:fitthread/Domain/Workout/workout_service.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
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
    on<AddExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addWorkoutFunc = await workoutService.addExercise(
        name: event.name,
        quantifying: event.quantifying,
        muscleGroup: event.muscleGroup,
        description: event.description,
        userId: event.userId,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(
            errorMessage: failure.errorMessage,
            isLoading: false,
            isError: true,
          ),
        ),
        (r) => emit(state.copyWith(isLoading: false)),
      );
    });
    on<GetExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addWorkoutFunc = await workoutService.getExercises();
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(
            errorMessage: failure.errorMessage,
            isLoading: false,
            isError: true,
          ),
        ),
        (exerciseList) => emit(
          state.copyWith(
            isLoading: false,
            exerciseList: exerciseList,
            isSuccess: true,
          ),
        ),
      );
    });
    on<DeleteExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addWorkoutFunc = await workoutService.deleteExercise(
        exerciseId: event.id,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(
            errorMessage: failure.errorMessage,
            isLoading: false,
            isError: true,
          ),
        ),
        (exerciseList) => emit(
          state.copyWith(isLoading: false, isError: false, isSuccess: true),
        ),
      );
    });
    on<EditExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final addWorkoutFunc = await workoutService.editExercise(
        exercise: event.exercise,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(
            errorMessage: failure.errorMessage,
            isLoading: false,
            isError: true,
          ),
        ),
        (exerciseList) => emit(
          state.copyWith(isLoading: false, isError: false, isSuccess: true),
        ),
      );
    });
  }
}
