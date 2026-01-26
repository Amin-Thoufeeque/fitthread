import 'package:dio/dio.dart';
import 'package:fitthread/Implementation/const.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    return Dio(
      BaseOptions(
        baseUrl: api, // your base url
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }
}
