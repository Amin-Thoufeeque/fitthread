import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/Workout/workout_service.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
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
  Future<Either<Failure, Unit>> addExercise({
    required String name,
    required String quantifying,
    required String muscleGroup,
    required String description,
    required String userId,
  }) async {
    try {
      Response response = await dio.post(
        '$api/admin/add-exercise',
        data: {
          'name': name,
          'quantifying': quantifying,
          'muscleGroup': muscleGroup,
          'description': description,
          'userId': userId,
        },
      );
      if (response.statusCode == 400) {
        return Left(Failure.general(response.data['msg']));
      }
      if (response.statusCode == 200) {
        return Right(unit);
      }
      return Left(Failure.general(response.data['msg']));
    } catch (e) {
      log(e.toString());
      return Left(Failure.network('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, List<Exercise>>> getExercises() async {
    try {
      List<Exercise> exerciseList = [];
      Response response = await dio.get('$api/workout/');
      if (response.statusCode == 400) {
        return Left(Failure.general(response.data['msg']));
      }
      if (response.statusCode == 200) {
        final List exerciseJson = response.data['exercises'];
        exerciseList = exerciseJson.map((e) => Exercise.fromMap(e)).toList();

        return Right(exerciseList);
      }
      return Left(Failure.general(response.data['msg']));
    } catch (e) {
      log(e.toString());
      return Left(Failure.network('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteExercise({
    required String exerciseId,
  }) async {
    try {
      Response response = await dio.delete(
        '$api/admin/delete-exercise/$exerciseId',
      );
      if (response.statusCode == 400) {
        return Left(Failure.general(response.data['msg']));
      }
      if (response.statusCode == 200) {
        bool status = response.data['status'];
        if (status) {
          return Right(unit);
        }
        return Left(Failure.general("Cannot delete exercise"));
      }
      return Left(Failure.general(response.data['msg']));
    } catch (e) {
      log(e.toString());
      return Left(Failure.network('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, Unit>> editExercise({
    required Exercise exercise,
  }) async {
    try {
      Response response = await dio.patch(
        '$api/admin/edit-exercise/${exercise.id}',

        data: exercise.toJson(),
      );
      if (response.statusCode == 400) {
        return Left(Failure.general(response.data['msg']));
      }
      if (response.statusCode == 200) {
        bool status = response.data['status'];
        if (status) {
          return Right(unit);
        }
        return Left(Failure.general("Cannot delete exercise"));
      }
      return Left(Failure.general(response.data['msg']));
    } catch (e) {
      log(e.toString());
      return Left(Failure.network('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, List<Exercise>>> searchExercise({
    required String query,
  }) async {
    try {
      Response response = await dio.get(
        '$api/admin/search-exercise',
        queryParameters: {"q": query},
      );
      List<Exercise> exerciseList = [];
      log(query);
      if (response.statusCode == 400) {
        log(response.data['msg']);
        log('fetch failed');
        return Left(Failure.general(response.data['msg']));
      }
      if (response.statusCode == 200) {
        log('fetch success');
        final List exerciseJson = response.data['exercises'];
        exerciseList = exerciseJson.map((e) => Exercise.fromMap(e)).toList();

        return Right(exerciseList);
      }
      return Left(Failure.general(response.data['msg']));
    } catch (e) {
      log(e.toString());
      return Left(Failure.general('Something went wrong'));
    }
  }

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
      Response response = await dio.post('$api/workout/add', data: payload);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return const Right(unit);
      } else {
        return Left(
          Failure.general(response.data['message'] ?? 'Workout save failed'),
        );
      }
    } on DioException catch (e) {
      return Left(
        Failure.network(e.response?.data['message'] ?? 'Network error'),
      );
    } catch (e) {
      log(e.toString());
      return Left(Failure.network('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, List<DateTime>>> getWorkoutDates({
    required String userId,
  }) async {
    try {
      Response response = await dio.get('$api/workout/dates/$userId');
      List<DateTime> datesList = [];

      if (response.statusCode == 400) {
        log(response.data['msg']);
        log('fetch failed');
        return Left(Failure.general(response.data['msg']));
      }
      if (response.statusCode == 200) {
        log('fetch success');
        final List datesJson = response.data['dates'];
        datesList = datesJson.map((e) => DateTime.parse(e)).toList();
        log(datesList.toString());
        return Right(datesList);
      }
      return Left(Failure.general(response.data['msg']));
    } catch (e) {
      log(e.toString());
      return Left(Failure.general('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, List<Workout>>> getWorkoutByDate({
    required String userId,
    required String dateTime,
  }) async {
    try {
      Response response = await dio.post(
        '$api/workout/get-workout-byDate',
        data: {'userId': userId, "date": dateTime},
      );
      List<Workout> workoutList = [];

      if (response.statusCode == 400) {
        log(response.data['msg']);
        log('fetch failed');
        return Left(Failure.general(response.data['msg']));
      }
      if (response.statusCode == 200) {
        log('fetch success');
        final List workoutsJson = response.data['workouts'];
        workoutList = workoutsJson.map((e) => Workout.fromMap(e)).toList();

        return Right(workoutList);
      }
      return Left(Failure.general(response.data['msg']));
    } catch (e) {
      log(e.toString());
      return Left(Failure.general('Something went wrong'));
    }
  }
}
