part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    required bool isLoading,
    required bool isError,
    required bool isTokenValid,
    Failure? failure,
    required Option<Either<Failure, User>> loginUserFunc,
    required Option<Future<Either<Failure, User>>> signUpUserFunc,
    required User user,
  }) = _UserState;
  factory UserState.initial() => UserState(
    isLoading: false,
    isError: false,
    isTokenValid: false,
    failure: null,
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
      bmi: 0,
    ),
  );
}
