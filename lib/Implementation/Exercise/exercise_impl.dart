import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitthread/Domain/Exercise/exercise_service.dart';
import 'package:fitthread/Domain/Network/Failure/failure.dart';
import 'package:fitthread/Domain/Network/api_error_handler.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Implementation/const.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ExerciseService)
class ExerciseImplementation implements ExerciseService {
  final dio = Dio(
    BaseOptions(headers: {'Content-Type': 'application/json; charset=UTF-8'}),
  );
  @override
  Future<Either<Failure, Unit>> addExercise({
    required String name,
    required String quantifying,
    required String muscleGroup,
    required String description,
    required String userId,
  }) async {
    try {
      await dio.post(
        '$api/api/admin/add-exercise',
        data: {
          'name': name,
          'quantifying': quantifying,
          'muscleGroup': muscleGroup,
          'description': description,
          'userId': userId,
        },
      );

      return Right(unit);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, List<Exercise>>> getExercises() async {
    try {
      List<Exercise> exerciseList = [];
      Response response = await dio.get('$api/api/workout/');

      final List exerciseJson = response.data['exercises'];
      exerciseList = exerciseJson.map((e) => Exercise.fromMap(e)).toList();

      return Right(exerciseList);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteExercise({
    required String exerciseId,
  }) async {
    try {
      Response response = await dio.delete(
        '$api/api/admin/delete-exercise/$exerciseId',
      );

      bool status = response.data['status'];
      if (status) {
        return Right(unit);
      }
      return Left(UnknownFailure(("Cannot delete exercise")));
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> editExercise({
    required Exercise exercise,
  }) async {
    try {
      Response response = await dio.patch(
        '$api/api/admin/edit-exercise/${exercise.id}',

        data: exercise.toJson(),
      );

      bool status = response.data['status'];
      if (status) {
        return Right(unit);
      }
      return Left(UnknownFailure("Cannot edit exercise"));
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, List<Exercise>>> searchExercise({
    required String query,
  }) async {
    try {
      Response response = await dio.get(
        '$api/api/admin/search-exercise',
        queryParameters: {"q": query},
      );
      List<Exercise> exerciseList = [];
      log(query);

      log('fetch success');
      final List exerciseJson = response.data['exercises'];
      exerciseList = exerciseJson.map((e) => Exercise.fromMap(e)).toList();

      return Right(exerciseList);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }
}
