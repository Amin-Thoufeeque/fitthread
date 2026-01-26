import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitthread/Implementation/Core/Network/Failure/failure.dart';
import 'package:fitthread/Implementation/Core/Network/api_error_handler.dart';
import 'package:fitthread/Domain/Workout/workout_service.dart';
import 'package:fitthread/Domain/models/workout_exercise_model.dart';
import 'package:fitthread/Domain/models/workout_model.dart';
import 'package:fitthread/Implementation/Core/Local/workout_local_data_source.dart';
import 'package:fitthread/Implementation/const.dart';
// ignore: depend_on_referenced_packages
import 'package:injectable/injectable.dart';

@LazySingleton(as: WorkoutService)
class WorkoutImplementation extends WorkoutService {
  final Dio dio;
  final WorkoutLocalDataSource localData;

  WorkoutImplementation(this.dio, this.localData);
  List<DateTime>? _memoryDates;
  DateTime? _lastFetch;
  String? _cachedUserId;
  final Map<String, List<Workout>> _memoryByDate = {};
  final Map<String, DateTime> _lastFetchByDate = {};
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
    await localData.clearCache();
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
    if (_memoryDates != null &&
        _cachedUserId == userId &&
        DateTime.now().difference(_lastFetch!) < const Duration(minutes: 5)) {
      return Right(_memoryDates!);
    }
    final cached = null;
    //await localData.getCachedDates(userId);
    if (cached != null && cached.isNotEmpty) {
      _memoryDates = cached;
      _lastFetch = DateTime.now();
      _cachedUserId = userId;
      return Right(cached);
    }
    try {
      Response response = await dio.get('$api/api/workout/dates/$userId');
      List<DateTime> datesList = [];

      log('fetch success');
      final List datesJson = response.data['dates'];
      datesList = datesJson.map((e) => DateTime.parse(e)).toList();
      log(datesList.toString());
      _memoryDates = datesList;
      _lastFetch = DateTime.now();
      _cachedUserId = userId;
      await localData.cacheDates(userId, datesList);
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
    final cacheKey = '$userId|$dateTime';
    final last = _lastFetchByDate[cacheKey];
    if (_memoryByDate.containsKey(cacheKey) &&
        DateTime.now().difference(last!) < const Duration(minutes: 5)) {
      return Right(_memoryByDate[cacheKey]!);
    }
    final cached = await localData.getCacheWorkoutsByDate(userId, dateTime);
    if (cached != null && cached.isNotEmpty) {
      _memoryByDate[cacheKey] = cached;
      _lastFetchByDate[cacheKey] = DateTime.now();
      return Right(cached);
    }
    try {
      Response response = await dio.get(
        '$api/api/workout/get-workout-byDate/$userId/$dateTime',
      );
      List<Workout> workoutList = [];

      log('fetch success');
      final List workoutsJson = response.data['workouts'];
      workoutList = workoutsJson.map((e) => Workout.fromMap(e)).toList();

      _memoryByDate[cacheKey] = workoutList;
      _lastFetchByDate[cacheKey] = DateTime.now();
      await localData.cacheWorkoutListByDate(workoutList, userId, dateTime);

      return Right(workoutList);
    } catch (e) {
      log(e.toString());

      return Left(ApiErrorHandler.handle(e));
    }
  }
}
