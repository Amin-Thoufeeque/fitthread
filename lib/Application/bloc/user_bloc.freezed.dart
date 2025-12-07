// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent implements DiagnosticableTreeMixin {

 String get email; String get password;
/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEventCopyWith<UserEvent> get copyWith => _$UserEventCopyWithImpl<UserEvent>(this as UserEvent, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent'))
    ..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $UserEventCopyWith<$Res>  {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) _then) = _$UserEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$UserEventCopyWithImpl<$Res>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._self, this._then);

  final UserEvent _self;
  final $Res Function(UserEvent) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LogIn value)?  login,TResult Function( SignUp value)?  signUp,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LogIn() when login != null:
return login(_that);case SignUp() when signUp != null:
return signUp(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LogIn value)  login,required TResult Function( SignUp value)  signUp,}){
final _that = this;
switch (_that) {
case LogIn():
return login(_that);case SignUp():
return signUp(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LogIn value)?  login,TResult? Function( SignUp value)?  signUp,}){
final _that = this;
switch (_that) {
case LogIn() when login != null:
return login(_that);case SignUp() when signUp != null:
return signUp(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  login,TResult Function( String username,  String email,  String password)?  signUp,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LogIn() when login != null:
return login(_that.email,_that.password);case SignUp() when signUp != null:
return signUp(_that.username,_that.email,_that.password);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  login,required TResult Function( String username,  String email,  String password)  signUp,}) {final _that = this;
switch (_that) {
case LogIn():
return login(_that.email,_that.password);case SignUp():
return signUp(_that.username,_that.email,_that.password);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  login,TResult? Function( String username,  String email,  String password)?  signUp,}) {final _that = this;
switch (_that) {
case LogIn() when login != null:
return login(_that.email,_that.password);case SignUp() when signUp != null:
return signUp(_that.username,_that.email,_that.password);case _:
  return null;

}
}

}

/// @nodoc


class LogIn with DiagnosticableTreeMixin implements UserEvent {
  const LogIn({required this.email, required this.password});
  

@override final  String email;
@override final  String password;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogInCopyWith<LogIn> get copyWith => _$LogInCopyWithImpl<LogIn>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.login'))
    ..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogIn&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LogInCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $LogInCopyWith(LogIn value, $Res Function(LogIn) _then) = _$LogInCopyWithImpl;
@override @useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LogInCopyWithImpl<$Res>
    implements $LogInCopyWith<$Res> {
  _$LogInCopyWithImpl(this._self, this._then);

  final LogIn _self;
  final $Res Function(LogIn) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(LogIn(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUp with DiagnosticableTreeMixin implements UserEvent {
  const SignUp({required this.username, required this.email, required this.password});
  

 final  String username;
@override final  String email;
@override final  String password;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpCopyWith<SignUp> get copyWith => _$SignUpCopyWithImpl<SignUp>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserEvent.signUp'))
    ..add(DiagnosticsProperty('username', username))..add(DiagnosticsProperty('email', email))..add(DiagnosticsProperty('password', password));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUp&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,username,email,password);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserEvent.signUp(username: $username, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignUpCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $SignUpCopyWith(SignUp value, $Res Function(SignUp) _then) = _$SignUpCopyWithImpl;
@override @useResult
$Res call({
 String username, String email, String password
});




}
/// @nodoc
class _$SignUpCopyWithImpl<$Res>
    implements $SignUpCopyWith<$Res> {
  _$SignUpCopyWithImpl(this._self, this._then);

  final SignUp _self;
  final $Res Function(SignUp) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? email = null,Object? password = null,}) {
  return _then(SignUp(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$UserState implements DiagnosticableTreeMixin {

 bool get isLoading; bool get isError; String get errorMessage; Option<Either<Failure, User>> get loginUserFunc; Option<Future<Either<Failure, User>>> get signUpUserFunc; User get user;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('loginUserFunc', loginUserFunc))..add(DiagnosticsProperty('signUpUserFunc', signUpUserFunc))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.loginUserFunc, loginUserFunc) || other.loginUserFunc == loginUserFunc)&&(identical(other.signUpUserFunc, signUpUserFunc) || other.signUpUserFunc == signUpUserFunc)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,loginUserFunc,signUpUserFunc,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, loginUserFunc: $loginUserFunc, signUpUserFunc: $signUpUserFunc, user: $user)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, String errorMessage, Option<Either<Failure, User>> loginUserFunc, Option<Future<Either<Failure, User>>> signUpUserFunc, User user
});




}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = null,Object? loginUserFunc = null,Object? signUpUserFunc = null,Object? user = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,loginUserFunc: null == loginUserFunc ? _self.loginUserFunc : loginUserFunc // ignore: cast_nullable_to_non_nullable
as Option<Either<Failure, User>>,signUpUserFunc: null == signUpUserFunc ? _self.signUpUserFunc : signUpUserFunc // ignore: cast_nullable_to_non_nullable
as Option<Future<Either<Failure, User>>>,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserState value)  $default,){
final _that = this;
switch (_that) {
case _UserState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserState value)?  $default,){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String errorMessage,  Option<Either<Failure, User>> loginUserFunc,  Option<Future<Either<Failure, User>>> signUpUserFunc,  User user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.loginUserFunc,_that.signUpUserFunc,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String errorMessage,  Option<Either<Failure, User>> loginUserFunc,  Option<Future<Either<Failure, User>>> signUpUserFunc,  User user)  $default,) {final _that = this;
switch (_that) {
case _UserState():
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.loginUserFunc,_that.signUpUserFunc,_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  String errorMessage,  Option<Either<Failure, User>> loginUserFunc,  Option<Future<Either<Failure, User>>> signUpUserFunc,  User user)?  $default,) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.loginUserFunc,_that.signUpUserFunc,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _UserState with DiagnosticableTreeMixin implements UserState {
  const _UserState({required this.isLoading, required this.isError, required this.errorMessage, required this.loginUserFunc, required this.signUpUserFunc, required this.user});
  

@override final  bool isLoading;
@override final  bool isError;
@override final  String errorMessage;
@override final  Option<Either<Failure, User>> loginUserFunc;
@override final  Option<Future<Either<Failure, User>>> signUpUserFunc;
@override final  User user;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'UserState'))
    ..add(DiagnosticsProperty('isLoading', isLoading))..add(DiagnosticsProperty('isError', isError))..add(DiagnosticsProperty('errorMessage', errorMessage))..add(DiagnosticsProperty('loginUserFunc', loginUserFunc))..add(DiagnosticsProperty('signUpUserFunc', signUpUserFunc))..add(DiagnosticsProperty('user', user));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.loginUserFunc, loginUserFunc) || other.loginUserFunc == loginUserFunc)&&(identical(other.signUpUserFunc, signUpUserFunc) || other.signUpUserFunc == signUpUserFunc)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,loginUserFunc,signUpUserFunc,user);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'UserState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, loginUserFunc: $loginUserFunc, signUpUserFunc: $signUpUserFunc, user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, String errorMessage, Option<Either<Failure, User>> loginUserFunc, Option<Future<Either<Failure, User>>> signUpUserFunc, User user
});




}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = null,Object? loginUserFunc = null,Object? signUpUserFunc = null,Object? user = null,}) {
  return _then(_UserState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,loginUserFunc: null == loginUserFunc ? _self.loginUserFunc : loginUserFunc // ignore: cast_nullable_to_non_nullable
as Option<Either<Failure, User>>,signUpUserFunc: null == signUpUserFunc ? _self.signUpUserFunc : signUpUserFunc // ignore: cast_nullable_to_non_nullable
as Option<Future<Either<Failure, User>>>,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

// dart format on
