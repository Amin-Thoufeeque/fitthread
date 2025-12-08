part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.login({
    required String email,
    required String password,
  }) = LogIn;
  const factory UserEvent.signUp({
    required String username,
    required String email,
    required String password,
  }) = SignUp;
  const factory UserEvent.validateUser() = ValidateUser;
}
