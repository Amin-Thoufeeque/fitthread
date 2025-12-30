// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent()';
}


}

/// @nodoc
class $WorkoutEventCopyWith<$Res>  {
$WorkoutEventCopyWith(WorkoutEvent _, $Res Function(WorkoutEvent) __);
}


/// Adds pattern-matching-related methods to [WorkoutEvent].
extension WorkoutEventPatterns on WorkoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetExercise value)?  getExercise,TResult Function( AddExercise value)?  addExercise,TResult Function( DeleteExercise value)?  deleteExercise,TResult Function( EditExercise value)?  editExercise,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise(_that);case AddExercise() when addExercise != null:
return addExercise(_that);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that);case EditExercise() when editExercise != null:
return editExercise(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetExercise value)  getExercise,required TResult Function( AddExercise value)  addExercise,required TResult Function( DeleteExercise value)  deleteExercise,required TResult Function( EditExercise value)  editExercise,}){
final _that = this;
switch (_that) {
case GetExercise():
return getExercise(_that);case AddExercise():
return addExercise(_that);case DeleteExercise():
return deleteExercise(_that);case EditExercise():
return editExercise(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetExercise value)?  getExercise,TResult? Function( AddExercise value)?  addExercise,TResult? Function( DeleteExercise value)?  deleteExercise,TResult? Function( EditExercise value)?  editExercise,}){
final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise(_that);case AddExercise() when addExercise != null:
return addExercise(_that);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that);case EditExercise() when editExercise != null:
return editExercise(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getExercise,TResult Function( String name,  String quantifying,  String muscleGroup,  String description,  String userId)?  addExercise,TResult Function( String id)?  deleteExercise,TResult Function( Exercise exercise)?  editExercise,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise();case AddExercise() when addExercise != null:
return addExercise(_that.name,_that.quantifying,_that.muscleGroup,_that.description,_that.userId);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that.id);case EditExercise() when editExercise != null:
return editExercise(_that.exercise);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getExercise,required TResult Function( String name,  String quantifying,  String muscleGroup,  String description,  String userId)  addExercise,required TResult Function( String id)  deleteExercise,required TResult Function( Exercise exercise)  editExercise,}) {final _that = this;
switch (_that) {
case GetExercise():
return getExercise();case AddExercise():
return addExercise(_that.name,_that.quantifying,_that.muscleGroup,_that.description,_that.userId);case DeleteExercise():
return deleteExercise(_that.id);case EditExercise():
return editExercise(_that.exercise);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getExercise,TResult? Function( String name,  String quantifying,  String muscleGroup,  String description,  String userId)?  addExercise,TResult? Function( String id)?  deleteExercise,TResult? Function( Exercise exercise)?  editExercise,}) {final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise();case AddExercise() when addExercise != null:
return addExercise(_that.name,_that.quantifying,_that.muscleGroup,_that.description,_that.userId);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that.id);case EditExercise() when editExercise != null:
return editExercise(_that.exercise);case _:
  return null;

}
}

}

/// @nodoc


class GetExercise implements WorkoutEvent {
  const GetExercise();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetExercise);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.getExercise()';
}


}




/// @nodoc


class AddExercise implements WorkoutEvent {
  const AddExercise({required this.name, required this.quantifying, required this.muscleGroup, required this.description, required this.userId});
  

 final  String name;
 final  String quantifying;
 final  String muscleGroup;
 final  String description;
 final  String userId;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExerciseCopyWith<AddExercise> get copyWith => _$AddExerciseCopyWithImpl<AddExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExercise&&(identical(other.name, name) || other.name == name)&&(identical(other.quantifying, quantifying) || other.quantifying == quantifying)&&(identical(other.muscleGroup, muscleGroup) || other.muscleGroup == muscleGroup)&&(identical(other.description, description) || other.description == description)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,name,quantifying,muscleGroup,description,userId);

@override
String toString() {
  return 'WorkoutEvent.addExercise(name: $name, quantifying: $quantifying, muscleGroup: $muscleGroup, description: $description, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $AddExerciseCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $AddExerciseCopyWith(AddExercise value, $Res Function(AddExercise) _then) = _$AddExerciseCopyWithImpl;
@useResult
$Res call({
 String name, String quantifying, String muscleGroup, String description, String userId
});




}
/// @nodoc
class _$AddExerciseCopyWithImpl<$Res>
    implements $AddExerciseCopyWith<$Res> {
  _$AddExerciseCopyWithImpl(this._self, this._then);

  final AddExercise _self;
  final $Res Function(AddExercise) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? quantifying = null,Object? muscleGroup = null,Object? description = null,Object? userId = null,}) {
  return _then(AddExercise(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,quantifying: null == quantifying ? _self.quantifying : quantifying // ignore: cast_nullable_to_non_nullable
as String,muscleGroup: null == muscleGroup ? _self.muscleGroup : muscleGroup // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteExercise implements WorkoutEvent {
  const DeleteExercise({required this.id});
  

 final  String id;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteExerciseCopyWith<DeleteExercise> get copyWith => _$DeleteExerciseCopyWithImpl<DeleteExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteExercise&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WorkoutEvent.deleteExercise(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeleteExerciseCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $DeleteExerciseCopyWith(DeleteExercise value, $Res Function(DeleteExercise) _then) = _$DeleteExerciseCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeleteExerciseCopyWithImpl<$Res>
    implements $DeleteExerciseCopyWith<$Res> {
  _$DeleteExerciseCopyWithImpl(this._self, this._then);

  final DeleteExercise _self;
  final $Res Function(DeleteExercise) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeleteExercise(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditExercise implements WorkoutEvent {
  const EditExercise({required this.exercise});
  

 final  Exercise exercise;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditExerciseCopyWith<EditExercise> get copyWith => _$EditExerciseCopyWithImpl<EditExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditExercise&&(identical(other.exercise, exercise) || other.exercise == exercise));
}


@override
int get hashCode => Object.hash(runtimeType,exercise);

@override
String toString() {
  return 'WorkoutEvent.editExercise(exercise: $exercise)';
}


}

/// @nodoc
abstract mixin class $EditExerciseCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $EditExerciseCopyWith(EditExercise value, $Res Function(EditExercise) _then) = _$EditExerciseCopyWithImpl;
@useResult
$Res call({
 Exercise exercise
});




}
/// @nodoc
class _$EditExerciseCopyWithImpl<$Res>
    implements $EditExerciseCopyWith<$Res> {
  _$EditExerciseCopyWithImpl(this._self, this._then);

  final EditExercise _self;
  final $Res Function(EditExercise) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exercise = null,}) {
  return _then(EditExercise(
exercise: null == exercise ? _self.exercise : exercise // ignore: cast_nullable_to_non_nullable
as Exercise,
  ));
}


}

/// @nodoc
mixin _$WorkoutState {

 bool get isLoading; bool get isError; String get errorMessage; bool get isSuccess; List<Exercise> get exerciseList;
/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutStateCopyWith<WorkoutState> get copyWith => _$WorkoutStateCopyWithImpl<WorkoutState>(this as WorkoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other.exerciseList, exerciseList));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,isSuccess,const DeepCollectionEquality().hash(exerciseList));

@override
String toString() {
  return 'WorkoutState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, isSuccess: $isSuccess, exerciseList: $exerciseList)';
}


}

/// @nodoc
abstract mixin class $WorkoutStateCopyWith<$Res>  {
  factory $WorkoutStateCopyWith(WorkoutState value, $Res Function(WorkoutState) _then) = _$WorkoutStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, String errorMessage, bool isSuccess, List<Exercise> exerciseList
});




}
/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res>
    implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._self, this._then);

  final WorkoutState _self;
  final $Res Function(WorkoutState) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = null,Object? isSuccess = null,Object? exerciseList = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,exerciseList: null == exerciseList ? _self.exerciseList : exerciseList // ignore: cast_nullable_to_non_nullable
as List<Exercise>,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkoutState].
extension WorkoutStatePatterns on WorkoutState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkoutState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkoutState value)  $default,){
final _that = this;
switch (_that) {
case _WorkoutState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkoutState value)?  $default,){
final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String errorMessage,  bool isSuccess,  List<Exercise> exerciseList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.isSuccess,_that.exerciseList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String errorMessage,  bool isSuccess,  List<Exercise> exerciseList)  $default,) {final _that = this;
switch (_that) {
case _WorkoutState():
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.isSuccess,_that.exerciseList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  String errorMessage,  bool isSuccess,  List<Exercise> exerciseList)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.isSuccess,_that.exerciseList);case _:
  return null;

}
}

}

/// @nodoc


class _WorkoutState implements WorkoutState {
  const _WorkoutState({required this.isLoading, required this.isError, required this.errorMessage, required this.isSuccess, required final  List<Exercise> exerciseList}): _exerciseList = exerciseList;
  

@override final  bool isLoading;
@override final  bool isError;
@override final  String errorMessage;
@override final  bool isSuccess;
 final  List<Exercise> _exerciseList;
@override List<Exercise> get exerciseList {
  if (_exerciseList is EqualUnmodifiableListView) return _exerciseList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exerciseList);
}


/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutStateCopyWith<_WorkoutState> get copyWith => __$WorkoutStateCopyWithImpl<_WorkoutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&const DeepCollectionEquality().equals(other._exerciseList, _exerciseList));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,isSuccess,const DeepCollectionEquality().hash(_exerciseList));

@override
String toString() {
  return 'WorkoutState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, isSuccess: $isSuccess, exerciseList: $exerciseList)';
}


}

/// @nodoc
abstract mixin class _$WorkoutStateCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory _$WorkoutStateCopyWith(_WorkoutState value, $Res Function(_WorkoutState) _then) = __$WorkoutStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, String errorMessage, bool isSuccess, List<Exercise> exerciseList
});




}
/// @nodoc
class __$WorkoutStateCopyWithImpl<$Res>
    implements _$WorkoutStateCopyWith<$Res> {
  __$WorkoutStateCopyWithImpl(this._self, this._then);

  final _WorkoutState _self;
  final $Res Function(_WorkoutState) _then;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = null,Object? isSuccess = null,Object? exerciseList = null,}) {
  return _then(_WorkoutState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,exerciseList: null == exerciseList ? _self._exerciseList : exerciseList // ignore: cast_nullable_to_non_nullable
as List<Exercise>,
  ));
}


}

// dart format on
