import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitthread/Domain/Exercise/exercise_service.dart';
import 'package:fitthread/Implementation/Core/Local/exercise_local_data_source.dart';
import 'package:fitthread/Implementation/Core/Network/Failure/failure.dart';
import 'package:fitthread/Implementation/Core/Network/api_error_handler.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Implementation/const.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ExerciseService)
class ExerciseImplementation implements ExerciseService {
  final Dio dio;
  final ExerciseLocalDataSource localDataSource;

  ExerciseImplementation(this.dio, this.localDataSource);
  DateTime? _lastFetched;

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
    final cached = await localDataSource.getCachedExercise();
    final bool isCacheFresh =
        _lastFetched != null &&
        DateTime.now().difference(_lastFetched!) < const Duration(minutes: 10);

    if (cached != null && cached.isNotEmpty && isCacheFresh) {
      return Right(cached);
    }

    try {
      List<Exercise> exerciseList = [];
      Response response = await dio.get('$api/api/workout/');

      final List exerciseJson = response.data['exercises'];
      exerciseList = exerciseJson.map((e) => Exercise.fromMap(e)).toList();

      _lastFetched = DateTime.now();
      await localDataSource.chacheExercises(exerciseList);
      return Right(exerciseList);
    } catch (e) {
      log(e.toString());
      if (cached != null && cached.isNotEmpty) {
        return Right(cached);
      }
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
