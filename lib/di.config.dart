// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'Application/Exercise/exercise_bloc.dart' as _i7;
import 'Application/User/user_bloc.dart' as _i89;
import 'Application/Workout/workout_bloc.dart' as _i1051;
import 'Domain/Exercise/exercise_service.dart' as _i436;
import 'Domain/User/auth_service.dart' as _i878;
import 'Domain/Workout/workout_service.dart' as _i998;
import 'Implementation/Core/Local/exercise_local_data_source.dart' as _i739;
import 'Implementation/Core/Local/workout_local_data_source.dart' as _i355;
import 'Implementation/Core/Network/dio.dart' as _i834;
import 'Implementation/Exercise/exercise_impl.dart' as _i16;
import 'Implementation/User/auth_impl.dart' as _i425;
import 'Implementation/Workout/workout_impl.dart' as _i896;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.lazySingleton<_i739.ExerciseLocalDataSource>(
      () => _i739.ExerciseLocalDataSource(),
    );
    gh.lazySingleton<_i355.WorkoutLocalDataSource>(
      () => _i355.WorkoutLocalDataSource(),
    );
    gh.lazySingleton<_i361.Dio>(() => networkModule.dio());
    gh.lazySingleton<_i878.AuthService>(() => _i425.AuthImplementation());
    gh.lazySingleton<_i998.WorkoutService>(
      () => _i896.WorkoutImplementation(
        gh<_i361.Dio>(),
        gh<_i355.WorkoutLocalDataSource>(),
      ),
    );
    gh.lazySingleton<_i436.ExerciseService>(
      () => _i16.ExerciseImplementation(
        gh<_i361.Dio>(),
        gh<_i739.ExerciseLocalDataSource>(),
      ),
    );
    gh.factory<_i89.UserBloc>(() => _i89.UserBloc(gh<_i878.AuthService>()));
    gh.factory<_i7.ExerciseBloc>(
      () => _i7.ExerciseBloc(gh<_i436.ExerciseService>()),
    );
    gh.factory<_i1051.WorkoutBloc>(
      () => _i1051.WorkoutBloc(gh<_i998.WorkoutService>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i834.NetworkModule {}
