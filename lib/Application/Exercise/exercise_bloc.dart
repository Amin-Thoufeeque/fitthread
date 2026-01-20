import 'package:fitthread/Domain/Network/Failure/failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:fitthread/Domain/Exercise/exercise_service.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';

part 'exercise_bloc.freezed.dart';
part 'exercise_event.dart';
part 'exercise_state.dart';

@injectable
class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  ExerciseService exerciseService;
  ExerciseBloc(this.exerciseService) : super(ExerciseState.initial()) {
    on<AddExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final addWorkoutFunc = await exerciseService.addExercise(
        name: event.name,
        quantifying: event.quantifying,
        muscleGroup: event.muscleGroup,
        description: event.description,
        userId: event.userId,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (r) => emit(state.copyWith(isLoading: false, isError: false)),
      );
    });
    on<GetExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final addWorkoutFunc = await exerciseService.getExercises();
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (exerciseList) => emit(
          state.copyWith(
            isLoading: false,
            exerciseList: exerciseList,
            searchExerciseList: exerciseList,
            isSuccess: true,
            isError: false,
          ),
        ),
      );
    });
    on<DeleteExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final addWorkoutFunc = await exerciseService.deleteExercise(
        exerciseId: event.id,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (exerciseList) => emit(
          state.copyWith(isLoading: false, isError: false, isSuccess: true),
        ),
      );
    });
    on<EditExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final addWorkoutFunc = await exerciseService.editExercise(
        exercise: event.exercise,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (exerciseList) => emit(
          state.copyWith(isLoading: false, isError: false, isSuccess: true),
        ),
      );
    });
    on<SearchExercise>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      final addWorkoutFunc = await exerciseService.searchExercise(
        query: event.query,
      );
      addWorkoutFunc.fold(
        (failure) => emit(
          state.copyWith(failure: failure, isLoading: false, isError: true),
        ),
        (exerciseList) => emit(
          state.copyWith(
            isLoading: false,
            isError: false,
            isSuccess: true,
            searchExerciseList: exerciseList,
          ),
        ),
      );
    });
  }
}
