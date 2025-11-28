import 'package:dartz/dartz.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/models/user_model.dart';

abstract class AuthService {
  Either<Failure, Future<User>> signUp({
    required String username,
    required String email,
    required String password,
    required int totalWorkouts,
    required int totalWorkoutDuration,
    required double fatPercentage,
    required double weightKg,
    required double heightCm,
  });
  Either<Failure, Future<User>> logIn({
    required String username,
    required String email,
    required String password,
    required int totalWorkouts,
    required int totalWorkoutDuration,
    required double fatPercentage,
    required double weightKg,
    required double heightCm,
  });
}
