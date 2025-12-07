import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:fitthread/Domain/Auth/auth_service.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/models/user_model.dart';
import 'package:fitthread/Implementation/const.dart';
import 'dart:developer';

@LazySingleton(as: AuthService)
class AuthImplementation extends AuthService {
  final dio = Dio();
  @override
  Future<Either<Failure, User>> logIn({
    required String password,
    required String email,
  }) async {
    try {
      log(email);
      log('i calling login');
      final Response response =
          await Dio(
            BaseOptions(
              connectTimeout: Duration(seconds: 10),
              receiveTimeout: Duration(seconds: 10),
            ),
          ).post(
            '$api/user/login',
            data: {'email': email, 'password': password},
            options: Options(contentType: 'application/json; charset=UTF-8'),
          );
      log('got response');
      if (response.statusCode == 200) {
        log('login success');
        final User user = User.fromMap(response.data['user']);
        log(user.toString());
        final String token = response.data['token'];
        log(token);
        SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
        await sharedPrefs.setString(sharedPrefsSecretKey, token);
        return Right(user);
      }
      if (response.statusCode == 400) {
        log('Login failed');
        return Left(Failure.general(response.data['msg']));
      }

      return Left(Failure.general(response.data['error']));
    } on DioException catch (e) {
      log(e.toString());

      return Left(Failure.network('Request timeout!'));
    } catch (e) {
      log(e.toString());
      return Left(Failure.network(e.toString()));
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
        '$api/user/signup',
        data: {'name': username, 'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final user = User.fromMap(response.data['user']);
        log(user.toString());
        return Right(user);
      }
      if (response.statusCode == 400) {
        return Left(Failure.general(response.data['msg']));
      }

      return Left(Failure.general(response.data['error']));
    } catch (e) {
      return Left(Failure.network(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> validateToken({required String token}) async {
    try {
      return Left(Failure.general('error'));
    } catch (e) {
      return Left(Failure.network(e.toString()));
    }
  }
}
