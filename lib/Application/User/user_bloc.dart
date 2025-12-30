import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:fitthread/Domain/Auth/auth_service.dart';
import 'package:fitthread/Domain/Failure/failure.dart';
import 'package:fitthread/Domain/models/user_model.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  AuthService authService;
  UserBloc(this.authService) : super(UserState.initial()) {
    on<LogIn>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final loginFunc = await authService.logIn(
        password: event.password,
        email: event.email,
      );
      loginFunc.fold(
        (failure) {
          return emit(
            state.copyWith(
              isError: true,
              isLoading: false,
              errorMessage: failure.errorMessage,
            ),
          );
        },
        (user) {
          return emit(
            state.copyWith(isLoading: false, isError: false, user: user),
          );
        },
      );
    });
    on<SignUp>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final loginFunc = await authService.signUp(
        username: event.username,
        password: event.password,
        email: event.email,
      );
      loginFunc.fold(
        (failure) {
          return emit(
            state.copyWith(
              isError: true,
              isLoading: false,
              errorMessage: failure.errorMessage,
            ),
          );
        },
        (user) {
          return emit(
            state.copyWith(isLoading: false, isError: false, user: user),
          );
        },
      );
    });
    on<ValidateUser>((event, emit) async {
      final validateUser = await authService.validateToken();
      if (validateUser == null) {
        emit(state.copyWith(isTokenValid: false));
      } else {
        emit(state.copyWith(isTokenValid: true, user: validateUser));
      }
    });
  }
}
