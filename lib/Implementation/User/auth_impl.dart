import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fitthread/Domain/Network/api_error_handler.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fitthread/Domain/User/auth_service.dart';
import 'package:fitthread/Domain/Network/Failure/failure.dart';
import 'package:fitthread/Domain/models/user_model.dart';
import 'package:fitthread/Implementation/const.dart';
import 'dart:developer';

@LazySingleton(as: AuthService)
class AuthImplementation extends AuthService {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: api,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      sendTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
    ),
  );
  @override
  Future<Either<Failure, User>> logIn({
    required String password,
    required String email,
  }) async {
    try {
      log(email);
      log('i calling login');
      final Response response = await dio.post(
        '$api/api/user/login',
        data: {'email': email, 'password': password},
        options: Options(contentType: 'application/json; charset=UTF-8'),
      );
      log('got response');

      log('login success');
      final User user = User.fromMap(response.data['user']);
      log(user.toString());
      final String token = response.data['token'];
      log(token);
      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      await sharedPrefs.setString(sharedPrefsSecretKey, token);
      return Right(user);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, User>> signUp({
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        '$api/api/user/signup',
        data: {'name': username, 'email': email, 'password': password},
      );

      final user = User.fromMap(response.data['user']);
      log(user.toString());
      return Right(user);
    } catch (e) {
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<User?> validateToken() async {
    try {
      SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
      String? authToken = sharedPrefs.getString(sharedPrefsSecretKey);
      if (authToken == null) {
        return null;
      }
      log(authToken.toString());
      Response response = await dio.post(
        '$api/api/user/isTokenValid',
        options: Options(headers: {'auth-token': authToken}),
      );
      if (response.statusCode == 200) {
        log('token status 200');
        bool status = response.data['status'];
        log(status.toString());
        User user = User.fromMap(response.data['user']);
        log(user.toString());
        if (!status) {
          return null;
        }
        return user;
      }
      return null;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  @override
  Future<Either<Failure, User>> updateUserHeight({
    required String userId,
    required int userHeight,
  }) async {
    try {
      Response response = await dio.patch(
        '$api/api/user/update/$userId/height',
        data: {"heightCm": userHeight},
      );

      log('fetch success');
      final user = User.fromMap(response.data['user']);
      log(user.toString());
      return Right(user);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<Either<Failure, User>> updateUserWeight({
    required String userId,
    required int userWeight,
  }) async {
    try {
      Response response = await dio.patch(
        '$api/api/user/update/$userId/weight',
        data: {"weightKg": userWeight},
      );

      log('fetch success');
      final user = User.fromMap(response.data['user']);
      log(user.toString());
      return Right(user);
    } catch (e) {
      log(e.toString());
      return Left(ApiErrorHandler.handle(e));
    }
  }

  @override
  Future<void> logOut() async {
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.clear();
  }
}
