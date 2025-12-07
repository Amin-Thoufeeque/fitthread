part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required Option<Either<Failure, User>> loginUserFunc,
    required Option<Future<Either<Failure, User>>> signUpUserFunc,
    required User user,
  }) = _UserState;
  factory UserState.initial() => UserState(
    isLoading: false,
    isError: false,
    errorMessage: '',
    loginUserFunc: None(),
    signUpUserFunc: None(),
    user: User(
      id: '',
      username: '',
      email: '',
      role: '',
      totalWorkouts: 0,
      totalWorkoutDuration: 0,
      fatPercentage: 0,
      weightKg: 0,
      heightCm: 0,
    ),
  );
}
