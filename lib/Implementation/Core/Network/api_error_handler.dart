import 'package:dio/dio.dart';
import 'package:fitthread/Implementation/Core/Network/Failure/failure.dart';

class ApiErrorHandler {
  static Failure handle(dynamic error) {
    if (error is DioException) {
      return _handleDioError(error);
    }

    return const UnknownFailure("Something went wrong");
  }

  static Failure _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkFailure("Connection timeout");

      case DioExceptionType.unknown:
        return const NetworkFailure("No internet connection");

      case DioExceptionType.cancel:
        return const UnknownFailure("Request cancelled");

      case DioExceptionType.badResponse:
        break; // handled below
      case DioExceptionType.badCertificate:
        return const NetworkFailure("Secure connection failed");
      case DioExceptionType.connectionError:
        return const NetworkFailure("No internet connection");
    }

    final response = error.response;
    final statusCode = response?.statusCode;
    final data = response?.data;

    String message = "Something went wrong";

    if (data is Map<String, dynamic>) {
      message = data['message'] ?? data['error'] ?? data['msg'] ?? message;
    }

    if (statusCode == 401) {
      return UnauthorizedFailure(message);
    }

    if (statusCode == 400 || statusCode == 409) {
      return ValidationFailure(message);
    }

    if (statusCode != null && statusCode >= 500) {
      return ServerFailure(message);
    }

    return UnknownFailure(message);
  }
}
