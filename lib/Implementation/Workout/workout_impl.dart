import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitthread/Domain/Network/Failure/failure.dart';
import 'package:fitthread/Domain/Network/api_error_handler.dart';
import 'package:fitthread/Domain/Workout/workout_service.dart';
import 'package:fitthread/Domain/models/workout_exercise_model.dart';
import 'package:fitthread/Domain/models/workout_model.dart';
import 'package:fitthread/Implementation/const.dart';
// ignore: depend_on_referenced_packages
import 'package:injectable/injectable.dart';

@LazySingleton(as: WorkoutService)
class WorkoutImplementation extends WorkoutService {
  final dio = Dio(
    BaseOptions(headers: {'Content-Type': 'application/json; charset=UTF-8'}),
  );

  @override
  Future<Either<Failure, Unit>> addWorkout({
    required List<WorkoutExersiseModel> workoutExerciseList,
    required String title,
    required DateTime workoutStartTime,
    required double totalWeightLifted,
    required int totalWorkoutDuration,
    required String userId,
    required int totalWorkoutSet,
  }) async {
    try {
      final payload = {
        "title": title,
        "userId": userId,
        "totalWorkoutSet": totalWorkoutSet,
        "startTime": workoutStartTime.toIso8601String(),
        "totalWeightLifted": totalWeightLifted,
        "duration": totalWorkoutDuration,
        "exercises": workoutExerciseList.map((e) => e.toMap()).toList(),
      };
      await dio.post('$api/api/workout/add', data: payload);

      return const Right(unit);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, List<DateTime>>> getWorkoutDates({
    required String userId,
  }) async {
    try {
      Response response = await dio.get('$api/api/workout/dates/$userId');
      List<DateTime> datesList = [];

      log('fetch success');
      final List datesJson = response.data['dates'];
      datesList = datesJson.map((e) => DateTime.parse(e)).toList();
      log(datesList.toString());
      return Right(datesList);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, List<Workout>>> getWorkoutByDate({
    required String userId,
    required String dateTime,
  }) async {
    try {
      Response response = await dio.post(
        '$api/api/workout/get-workout-byDate',
        data: {'userId': userId, "date": dateTime},
      );
      List<Workout> workoutList = [];

      log('fetch success');
      final List workoutsJson = response.data['workouts'];
      workoutList = workoutsJson.map((e) => Workout.fromMap(e)).toList();

      return Right(workoutList);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }
}
