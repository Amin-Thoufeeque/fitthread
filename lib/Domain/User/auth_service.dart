import 'package:dartz/dartz.dart';
import 'package:fitthread/Implementation/Core/Network/Failure/failure.dart';
import 'package:fitthread/Domain/models/user_model.dart';

abstract class AuthService {
  Future<Either<Failure, User>> signUp({
    required String username,
    required String email,
    required String password,
  });
  Future<Either<Failure, User>> logIn({
    required String password,
    required String email,
  });
  Future<User?> validateToken();
  Future<Either<Failure, User>> updateUserWeight({
    required String userId,
    required int userWeight,
  });
  Future<Either<Failure, User>> updateUserHeight({
    required String userId,
    required int userHeight,
  });
  Future<void> logOut();
}
