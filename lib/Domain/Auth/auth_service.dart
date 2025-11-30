import 'package:dartz/dartz.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/models/user_model.dart';

abstract class AuthService {
  Future<Either<Failure, User>> signUp({
    required String username,
    required String email,
    required String password,
    required int totalWorkouts,
    required int totalWorkoutDuration,
    required double fatPercentage,
    required double weightKg,
    required double heightCm,
  });
  Future<Either<Failure, User>> logIn({
    required String password,
    required String email,
  });
  Future<Either<Failure, User>> validateToken({required String token});
}
