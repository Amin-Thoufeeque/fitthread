import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fitthread/Domain/Auth/auth_service.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/models/user_model.dart';
import 'package:fitthread/Implementation/const.dart';

@LazySingleton(as: AuthService)
class AuthImplementation extends AuthService {
  final dio = Dio();
  @override
  Future<Either<Failure, User>> logIn({
    required String password,
    required String email,
  }) async {
    try {
      final Response response = await dio.post(
        '$api/login',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final User user = User.fromJson(jsonDecode(response.data)['user']);
        final String token = jsonDecode(response.data)['token'];
        SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
        await sharedPrefs.setString(sharedPrefsSecretKey, token);
        return Right(user);
      }
      if (response.statusCode == 400) {
        return Left(Failure.general(jsonDecode(response.data)['msg']));
      }

      return Left(Failure.general(jsonDecode(response.data)['error']));
    } catch (e) {
      return Left(Failure.network(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> signUp({
    required String username,
    required String email,
    required String password,
    required int totalWorkouts,
    required int totalWorkoutDuration,
    required double fatPercentage,
    required double weightKg,
    required double heightCm,
  }) async {
    try {
      final response = await dio.post(
        '$api/signup',
        data: {
          'name': username,
          'email': email,
          'password': password,
          'totalWorkouts': totalWorkouts,
          'totalWorkoutDuration': totalWorkoutDuration,
          'fatPercentage': fatPercentage,
          'weightKg': weightKg,
          'heightCm': heightCm,
        },
      );

      if (response.statusCode == 200) {
        final user = User.fromJson(jsonDecode(response.data)['user']);
        return Right(user);
      }
      if (response.statusCode == 400) {
        return Left(Failure.general(jsonDecode(response.data)['msg']));
      }

      return Left(Failure.general(jsonDecode(response.data)['error']));
    } catch (e) {
      return Left(Failure.network(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> validateToken({required String token}) async {
    try {} catch (e) {
      return Left(Failure.network(e.toString()));
    }
  }
}
