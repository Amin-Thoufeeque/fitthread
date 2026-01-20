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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetWorkoutExercise value)?  getWorkoutExercise,TResult Function( AddWorkoutSet value)?  addWorkoutSet,TResult Function( DeleteWorkoutSet value)?  deleteWorkoutSet,TResult Function( CompleteWorkoutSet value)?  completeWorkoutSet,TResult Function( RemoveSelectedExercise value)?  removeSelectedExercise,TResult Function( AddNewSelectedExercise value)?  addNewSelectedExercise,TResult Function( StartWorkoutTimer value)?  startWorkoutTimer,TResult Function( DiscardWorkout value)?  discardWorkout,TResult Function( CheckSetCompletion value)?  checkSetCompletion,TResult Function( AddWorkout value)?  addWorkout,TResult Function( GetWorkoutDates value)?  getWorkoutDates,TResult Function( GetWorkoutByDate value)?  getWorkoutByDate,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer(_that);case DiscardWorkout() when discardWorkout != null:
return discardWorkout(_that);case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion(_that);case AddWorkout() when addWorkout != null:
return addWorkout(_that);case GetWorkoutDates() when getWorkoutDates != null:
return getWorkoutDates(_that);case GetWorkoutByDate() when getWorkoutByDate != null:
return getWorkoutByDate(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetWorkoutExercise value)  getWorkoutExercise,required TResult Function( AddWorkoutSet value)  addWorkoutSet,required TResult Function( DeleteWorkoutSet value)  deleteWorkoutSet,required TResult Function( CompleteWorkoutSet value)  completeWorkoutSet,required TResult Function( RemoveSelectedExercise value)  removeSelectedExercise,required TResult Function( AddNewSelectedExercise value)  addNewSelectedExercise,required TResult Function( StartWorkoutTimer value)  startWorkoutTimer,required TResult Function( DiscardWorkout value)  discardWorkout,required TResult Function( CheckSetCompletion value)  checkSetCompletion,required TResult Function( AddWorkout value)  addWorkout,required TResult Function( GetWorkoutDates value)  getWorkoutDates,required TResult Function( GetWorkoutByDate value)  getWorkoutByDate,}){
final _that = this;
switch (_that) {
case GetWorkoutExercise():
return getWorkoutExercise(_that);case AddWorkoutSet():
return addWorkoutSet(_that);case DeleteWorkoutSet():
return deleteWorkoutSet(_that);case CompleteWorkoutSet():
return completeWorkoutSet(_that);case RemoveSelectedExercise():
return removeSelectedExercise(_that);case AddNewSelectedExercise():
return addNewSelectedExercise(_that);case StartWorkoutTimer():
return startWorkoutTimer(_that);case DiscardWorkout():
return discardWorkout(_that);case CheckSetCompletion():
return checkSetCompletion(_that);case AddWorkout():
return addWorkout(_that);case GetWorkoutDates():
return getWorkoutDates(_that);case GetWorkoutByDate():
return getWorkoutByDate(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetWorkoutExercise value)?  getWorkoutExercise,TResult? Function( AddWorkoutSet value)?  addWorkoutSet,TResult? Function( DeleteWorkoutSet value)?  deleteWorkoutSet,TResult? Function( CompleteWorkoutSet value)?  completeWorkoutSet,TResult? Function( RemoveSelectedExercise value)?  removeSelectedExercise,TResult? Function( AddNewSelectedExercise value)?  addNewSelectedExercise,TResult? Function( StartWorkoutTimer value)?  startWorkoutTimer,TResult? Function( DiscardWorkout value)?  discardWorkout,TResult? Function( CheckSetCompletion value)?  checkSetCompletion,TResult? Function( AddWorkout value)?  addWorkout,TResult? Function( GetWorkoutDates value)?  getWorkoutDates,TResult? Function( GetWorkoutByDate value)?  getWorkoutByDate,}){
final _that = this;
switch (_that) {
case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer(_that);case DiscardWorkout() when discardWorkout != null:
return discardWorkout(_that);case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion(_that);case AddWorkout() when addWorkout != null:
return addWorkout(_that);case GetWorkoutDates() when getWorkoutDates != null:
return getWorkoutDates(_that);case GetWorkoutByDate() when getWorkoutByDate != null:
return getWorkoutByDate(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<Exercise> selectedExercises)?  getWorkoutExercise,TResult Function( int workoutIndex)?  addWorkoutSet,TResult Function( int workoutIndex,  int setIndex)?  deleteWorkoutSet,TResult Function( int workoutIndex,  int setIndex,  String weight,  String time,  String reps)?  completeWorkoutSet,TResult Function( int selectedWorkoutIndex)?  removeSelectedExercise,TResult Function( List<Exercise> newExerciseList)?  addNewSelectedExercise,TResult Function()?  startWorkoutTimer,TResult Function()?  discardWorkout,TResult Function()?  checkSetCompletion,TResult Function( String title,  Duration workoutDuration,  String userId)?  addWorkout,TResult Function( String userId)?  getWorkoutDates,TResult Function( String userId,  String dateTime)?  getWorkoutByDate,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that.selectedExercises);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that.workoutIndex);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that.workoutIndex,_that.setIndex);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that.workoutIndex,_that.setIndex,_that.weight,_that.time,_that.reps);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that.selectedWorkoutIndex);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that.newExerciseList);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer();case DiscardWorkout() when discardWorkout != null:
return discardWorkout();case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion();case AddWorkout() when addWorkout != null:
return addWorkout(_that.title,_that.workoutDuration,_that.userId);case GetWorkoutDates() when getWorkoutDates != null:
return getWorkoutDates(_that.userId);case GetWorkoutByDate() when getWorkoutByDate != null:
return getWorkoutByDate(_that.userId,_that.dateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<Exercise> selectedExercises)  getWorkoutExercise,required TResult Function( int workoutIndex)  addWorkoutSet,required TResult Function( int workoutIndex,  int setIndex)  deleteWorkoutSet,required TResult Function( int workoutIndex,  int setIndex,  String weight,  String time,  String reps)  completeWorkoutSet,required TResult Function( int selectedWorkoutIndex)  removeSelectedExercise,required TResult Function( List<Exercise> newExerciseList)  addNewSelectedExercise,required TResult Function()  startWorkoutTimer,required TResult Function()  discardWorkout,required TResult Function()  checkSetCompletion,required TResult Function( String title,  Duration workoutDuration,  String userId)  addWorkout,required TResult Function( String userId)  getWorkoutDates,required TResult Function( String userId,  String dateTime)  getWorkoutByDate,}) {final _that = this;
switch (_that) {
case GetWorkoutExercise():
return getWorkoutExercise(_that.selectedExercises);case AddWorkoutSet():
return addWorkoutSet(_that.workoutIndex);case DeleteWorkoutSet():
return deleteWorkoutSet(_that.workoutIndex,_that.setIndex);case CompleteWorkoutSet():
return completeWorkoutSet(_that.workoutIndex,_that.setIndex,_that.weight,_that.time,_that.reps);case RemoveSelectedExercise():
return removeSelectedExercise(_that.selectedWorkoutIndex);case AddNewSelectedExercise():
return addNewSelectedExercise(_that.newExerciseList);case StartWorkoutTimer():
return startWorkoutTimer();case DiscardWorkout():
return discardWorkout();case CheckSetCompletion():
return checkSetCompletion();case AddWorkout():
return addWorkout(_that.title,_that.workoutDuration,_that.userId);case GetWorkoutDates():
return getWorkoutDates(_that.userId);case GetWorkoutByDate():
return getWorkoutByDate(_that.userId,_that.dateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<Exercise> selectedExercises)?  getWorkoutExercise,TResult? Function( int workoutIndex)?  addWorkoutSet,TResult? Function( int workoutIndex,  int setIndex)?  deleteWorkoutSet,TResult? Function( int workoutIndex,  int setIndex,  String weight,  String time,  String reps)?  completeWorkoutSet,TResult? Function( int selectedWorkoutIndex)?  removeSelectedExercise,TResult? Function( List<Exercise> newExerciseList)?  addNewSelectedExercise,TResult? Function()?  startWorkoutTimer,TResult? Function()?  discardWorkout,TResult? Function()?  checkSetCompletion,TResult? Function( String title,  Duration workoutDuration,  String userId)?  addWorkout,TResult? Function( String userId)?  getWorkoutDates,TResult? Function( String userId,  String dateTime)?  getWorkoutByDate,}) {final _that = this;
switch (_that) {
case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that.selectedExercises);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that.workoutIndex);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that.workoutIndex,_that.setIndex);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that.workoutIndex,_that.setIndex,_that.weight,_that.time,_that.reps);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that.selectedWorkoutIndex);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that.newExerciseList);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer();case DiscardWorkout() when discardWorkout != null:
return discardWorkout();case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion();case AddWorkout() when addWorkout != null:
return addWorkout(_that.title,_that.workoutDuration,_that.userId);case GetWorkoutDates() when getWorkoutDates != null:
return getWorkoutDates(_that.userId);case GetWorkoutByDate() when getWorkoutByDate != null:
return getWorkoutByDate(_that.userId,_that.dateTime);case _:
  return null;

}
}

}

/// @nodoc


class GetWorkoutExercise implements WorkoutEvent {
  const GetWorkoutExercise({required final  List<Exercise> selectedExercises}): _selectedExercises = selectedExercises;
  

 final  List<Exercise> _selectedExercises;
 List<Exercise> get selectedExercises {
  if (_selectedExercises is EqualUnmodifiableListView) return _selectedExercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedExercises);
}


/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWorkoutExerciseCopyWith<GetWorkoutExercise> get copyWith => _$GetWorkoutExerciseCopyWithImpl<GetWorkoutExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkoutExercise&&const DeepCollectionEquality().equals(other._selectedExercises, _selectedExercises));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedExercises));

@override
String toString() {
  return 'WorkoutEvent.getWorkoutExercise(selectedExercises: $selectedExercises)';
}


}

/// @nodoc
abstract mixin class $GetWorkoutExerciseCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $GetWorkoutExerciseCopyWith(GetWorkoutExercise value, $Res Function(GetWorkoutExercise) _then) = _$GetWorkoutExerciseCopyWithImpl;
@useResult
$Res call({
 List<Exercise> selectedExercises
});




}
/// @nodoc
class _$GetWorkoutExerciseCopyWithImpl<$Res>
    implements $GetWorkoutExerciseCopyWith<$Res> {
  _$GetWorkoutExerciseCopyWithImpl(this._self, this._then);

  final GetWorkoutExercise _self;
  final $Res Function(GetWorkoutExercise) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedExercises = null,}) {
  return _then(GetWorkoutExercise(
selectedExercises: null == selectedExercises ? _self._selectedExercises : selectedExercises // ignore: cast_nullable_to_non_nullable
as List<Exercise>,
  ));
}


}

/// @nodoc


class AddWorkoutSet implements WorkoutEvent {
  const AddWorkoutSet({required this.workoutIndex});
  

 final  int workoutIndex;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddWorkoutSetCopyWith<AddWorkoutSet> get copyWith => _$AddWorkoutSetCopyWithImpl<AddWorkoutSet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddWorkoutSet&&(identical(other.workoutIndex, workoutIndex) || other.workoutIndex == workoutIndex));
}


@override
int get hashCode => Object.hash(runtimeType,workoutIndex);

@override
String toString() {
  return 'WorkoutEvent.addWorkoutSet(workoutIndex: $workoutIndex)';
}


}

/// @nodoc
abstract mixin class $AddWorkoutSetCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $AddWorkoutSetCopyWith(AddWorkoutSet value, $Res Function(AddWorkoutSet) _then) = _$AddWorkoutSetCopyWithImpl;
@useResult
$Res call({
 int workoutIndex
});




}
/// @nodoc
class _$AddWorkoutSetCopyWithImpl<$Res>
    implements $AddWorkoutSetCopyWith<$Res> {
  _$AddWorkoutSetCopyWithImpl(this._self, this._then);

  final AddWorkoutSet _self;
  final $Res Function(AddWorkoutSet) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workoutIndex = null,}) {
  return _then(AddWorkoutSet(
workoutIndex: null == workoutIndex ? _self.workoutIndex : workoutIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class DeleteWorkoutSet implements WorkoutEvent {
  const DeleteWorkoutSet({required this.workoutIndex, required this.setIndex});
  

 final  int workoutIndex;
 final  int setIndex;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteWorkoutSetCopyWith<DeleteWorkoutSet> get copyWith => _$DeleteWorkoutSetCopyWithImpl<DeleteWorkoutSet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteWorkoutSet&&(identical(other.workoutIndex, workoutIndex) || other.workoutIndex == workoutIndex)&&(identical(other.setIndex, setIndex) || other.setIndex == setIndex));
}


@override
int get hashCode => Object.hash(runtimeType,workoutIndex,setIndex);

@override
String toString() {
  return 'WorkoutEvent.deleteWorkoutSet(workoutIndex: $workoutIndex, setIndex: $setIndex)';
}


}

/// @nodoc
abstract mixin class $DeleteWorkoutSetCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $DeleteWorkoutSetCopyWith(DeleteWorkoutSet value, $Res Function(DeleteWorkoutSet) _then) = _$DeleteWorkoutSetCopyWithImpl;
@useResult
$Res call({
 int workoutIndex, int setIndex
});




}
/// @nodoc
class _$DeleteWorkoutSetCopyWithImpl<$Res>
    implements $DeleteWorkoutSetCopyWith<$Res> {
  _$DeleteWorkoutSetCopyWithImpl(this._self, this._then);

  final DeleteWorkoutSet _self;
  final $Res Function(DeleteWorkoutSet) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workoutIndex = null,Object? setIndex = null,}) {
  return _then(DeleteWorkoutSet(
workoutIndex: null == workoutIndex ? _self.workoutIndex : workoutIndex // ignore: cast_nullable_to_non_nullable
as int,setIndex: null == setIndex ? _self.setIndex : setIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CompleteWorkoutSet implements WorkoutEvent {
  const CompleteWorkoutSet({required this.workoutIndex, required this.setIndex, required this.weight, required this.time, required this.reps});
  

 final  int workoutIndex;
 final  int setIndex;
 final  String weight;
 final  String time;
 final  String reps;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteWorkoutSetCopyWith<CompleteWorkoutSet> get copyWith => _$CompleteWorkoutSetCopyWithImpl<CompleteWorkoutSet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteWorkoutSet&&(identical(other.workoutIndex, workoutIndex) || other.workoutIndex == workoutIndex)&&(identical(other.setIndex, setIndex) || other.setIndex == setIndex)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.time, time) || other.time == time)&&(identical(other.reps, reps) || other.reps == reps));
}


@override
int get hashCode => Object.hash(runtimeType,workoutIndex,setIndex,weight,time,reps);

@override
String toString() {
  return 'WorkoutEvent.completeWorkoutSet(workoutIndex: $workoutIndex, setIndex: $setIndex, weight: $weight, time: $time, reps: $reps)';
}


}

/// @nodoc
abstract mixin class $CompleteWorkoutSetCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $CompleteWorkoutSetCopyWith(CompleteWorkoutSet value, $Res Function(CompleteWorkoutSet) _then) = _$CompleteWorkoutSetCopyWithImpl;
@useResult
$Res call({
 int workoutIndex, int setIndex, String weight, String time, String reps
});




}
/// @nodoc
class _$CompleteWorkoutSetCopyWithImpl<$Res>
    implements $CompleteWorkoutSetCopyWith<$Res> {
  _$CompleteWorkoutSetCopyWithImpl(this._self, this._then);

  final CompleteWorkoutSet _self;
  final $Res Function(CompleteWorkoutSet) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? workoutIndex = null,Object? setIndex = null,Object? weight = null,Object? time = null,Object? reps = null,}) {
  return _then(CompleteWorkoutSet(
workoutIndex: null == workoutIndex ? _self.workoutIndex : workoutIndex // ignore: cast_nullable_to_non_nullable
as int,setIndex: null == setIndex ? _self.setIndex : setIndex // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as String,time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,reps: null == reps ? _self.reps : reps // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveSelectedExercise implements WorkoutEvent {
  const RemoveSelectedExercise({required this.selectedWorkoutIndex});
  

 final  int selectedWorkoutIndex;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveSelectedExerciseCopyWith<RemoveSelectedExercise> get copyWith => _$RemoveSelectedExerciseCopyWithImpl<RemoveSelectedExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveSelectedExercise&&(identical(other.selectedWorkoutIndex, selectedWorkoutIndex) || other.selectedWorkoutIndex == selectedWorkoutIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedWorkoutIndex);

@override
String toString() {
  return 'WorkoutEvent.removeSelectedExercise(selectedWorkoutIndex: $selectedWorkoutIndex)';
}


}

/// @nodoc
abstract mixin class $RemoveSelectedExerciseCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $RemoveSelectedExerciseCopyWith(RemoveSelectedExercise value, $Res Function(RemoveSelectedExercise) _then) = _$RemoveSelectedExerciseCopyWithImpl;
@useResult
$Res call({
 int selectedWorkoutIndex
});




}
/// @nodoc
class _$RemoveSelectedExerciseCopyWithImpl<$Res>
    implements $RemoveSelectedExerciseCopyWith<$Res> {
  _$RemoveSelectedExerciseCopyWithImpl(this._self, this._then);

  final RemoveSelectedExercise _self;
  final $Res Function(RemoveSelectedExercise) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedWorkoutIndex = null,}) {
  return _then(RemoveSelectedExercise(
selectedWorkoutIndex: null == selectedWorkoutIndex ? _self.selectedWorkoutIndex : selectedWorkoutIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AddNewSelectedExercise implements WorkoutEvent {
  const AddNewSelectedExercise({required final  List<Exercise> newExerciseList}): _newExerciseList = newExerciseList;
  

 final  List<Exercise> _newExerciseList;
 List<Exercise> get newExerciseList {
  if (_newExerciseList is EqualUnmodifiableListView) return _newExerciseList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_newExerciseList);
}


/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddNewSelectedExerciseCopyWith<AddNewSelectedExercise> get copyWith => _$AddNewSelectedExerciseCopyWithImpl<AddNewSelectedExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddNewSelectedExercise&&const DeepCollectionEquality().equals(other._newExerciseList, _newExerciseList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_newExerciseList));

@override
String toString() {
  return 'WorkoutEvent.addNewSelectedExercise(newExerciseList: $newExerciseList)';
}


}

/// @nodoc
abstract mixin class $AddNewSelectedExerciseCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $AddNewSelectedExerciseCopyWith(AddNewSelectedExercise value, $Res Function(AddNewSelectedExercise) _then) = _$AddNewSelectedExerciseCopyWithImpl;
@useResult
$Res call({
 List<Exercise> newExerciseList
});




}
/// @nodoc
class _$AddNewSelectedExerciseCopyWithImpl<$Res>
    implements $AddNewSelectedExerciseCopyWith<$Res> {
  _$AddNewSelectedExerciseCopyWithImpl(this._self, this._then);

  final AddNewSelectedExercise _self;
  final $Res Function(AddNewSelectedExercise) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newExerciseList = null,}) {
  return _then(AddNewSelectedExercise(
newExerciseList: null == newExerciseList ? _self._newExerciseList : newExerciseList // ignore: cast_nullable_to_non_nullable
as List<Exercise>,
  ));
}


}

/// @nodoc


class StartWorkoutTimer implements WorkoutEvent {
  const StartWorkoutTimer();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWorkoutTimer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.startWorkoutTimer()';
}


}




/// @nodoc


class DiscardWorkout implements WorkoutEvent {
  const DiscardWorkout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiscardWorkout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.discardWorkout()';
}


}




/// @nodoc


class CheckSetCompletion implements WorkoutEvent {
  const CheckSetCompletion();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckSetCompletion);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WorkoutEvent.checkSetCompletion()';
}


}




/// @nodoc


class AddWorkout implements WorkoutEvent {
  const AddWorkout({required this.title, required this.workoutDuration, required this.userId});
  

 final  String title;
 final  Duration workoutDuration;
 final  String userId;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddWorkoutCopyWith<AddWorkout> get copyWith => _$AddWorkoutCopyWithImpl<AddWorkout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddWorkout&&(identical(other.title, title) || other.title == title)&&(identical(other.workoutDuration, workoutDuration) || other.workoutDuration == workoutDuration)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,title,workoutDuration,userId);

@override
String toString() {
  return 'WorkoutEvent.addWorkout(title: $title, workoutDuration: $workoutDuration, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $AddWorkoutCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $AddWorkoutCopyWith(AddWorkout value, $Res Function(AddWorkout) _then) = _$AddWorkoutCopyWithImpl;
@useResult
$Res call({
 String title, Duration workoutDuration, String userId
});




}
/// @nodoc
class _$AddWorkoutCopyWithImpl<$Res>
    implements $AddWorkoutCopyWith<$Res> {
  _$AddWorkoutCopyWithImpl(this._self, this._then);

  final AddWorkout _self;
  final $Res Function(AddWorkout) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? workoutDuration = null,Object? userId = null,}) {
  return _then(AddWorkout(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,workoutDuration: null == workoutDuration ? _self.workoutDuration : workoutDuration // ignore: cast_nullable_to_non_nullable
as Duration,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetWorkoutDates implements WorkoutEvent {
  const GetWorkoutDates({required this.userId});
  

 final  String userId;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWorkoutDatesCopyWith<GetWorkoutDates> get copyWith => _$GetWorkoutDatesCopyWithImpl<GetWorkoutDates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkoutDates&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'WorkoutEvent.getWorkoutDates(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $GetWorkoutDatesCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $GetWorkoutDatesCopyWith(GetWorkoutDates value, $Res Function(GetWorkoutDates) _then) = _$GetWorkoutDatesCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$GetWorkoutDatesCopyWithImpl<$Res>
    implements $GetWorkoutDatesCopyWith<$Res> {
  _$GetWorkoutDatesCopyWithImpl(this._self, this._then);

  final GetWorkoutDates _self;
  final $Res Function(GetWorkoutDates) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(GetWorkoutDates(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetWorkoutByDate implements WorkoutEvent {
  const GetWorkoutByDate({required this.userId, required this.dateTime});
  

 final  String userId;
 final  String dateTime;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetWorkoutByDateCopyWith<GetWorkoutByDate> get copyWith => _$GetWorkoutByDateCopyWithImpl<GetWorkoutByDate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetWorkoutByDate&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.dateTime, dateTime) || other.dateTime == dateTime));
}


@override
int get hashCode => Object.hash(runtimeType,userId,dateTime);

@override
String toString() {
  return 'WorkoutEvent.getWorkoutByDate(userId: $userId, dateTime: $dateTime)';
}


}

/// @nodoc
abstract mixin class $GetWorkoutByDateCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $GetWorkoutByDateCopyWith(GetWorkoutByDate value, $Res Function(GetWorkoutByDate) _then) = _$GetWorkoutByDateCopyWithImpl;
@useResult
$Res call({
 String userId, String dateTime
});




}
/// @nodoc
class _$GetWorkoutByDateCopyWithImpl<$Res>
    implements $GetWorkoutByDateCopyWith<$Res> {
  _$GetWorkoutByDateCopyWithImpl(this._self, this._then);

  final GetWorkoutByDate _self;
  final $Res Function(GetWorkoutByDate) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? dateTime = null,}) {
  return _then(GetWorkoutByDate(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,dateTime: null == dateTime ? _self.dateTime : dateTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$WorkoutState {

 bool get isLoading; bool get isError; Failure? get failure; bool get isSuccess; bool get isAllSetCompleted; double get totalVolume; int get totalSet; List<DateTime> get dateList; List<Workout> get getWorkoutByDateList; List<WorkoutExersiseModel> get workoutsList; DateTime? get totalWorkoutDuration; DateTime? get workoutStartTime;
/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutStateCopyWith<WorkoutState> get copyWith => _$WorkoutStateCopyWithImpl<WorkoutState>(this as WorkoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isAllSetCompleted, isAllSetCompleted) || other.isAllSetCompleted == isAllSetCompleted)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.totalSet, totalSet) || other.totalSet == totalSet)&&const DeepCollectionEquality().equals(other.dateList, dateList)&&const DeepCollectionEquality().equals(other.getWorkoutByDateList, getWorkoutByDateList)&&const DeepCollectionEquality().equals(other.workoutsList, workoutsList)&&(identical(other.totalWorkoutDuration, totalWorkoutDuration) || other.totalWorkoutDuration == totalWorkoutDuration)&&(identical(other.workoutStartTime, workoutStartTime) || other.workoutStartTime == workoutStartTime));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,failure,isSuccess,isAllSetCompleted,totalVolume,totalSet,const DeepCollectionEquality().hash(dateList),const DeepCollectionEquality().hash(getWorkoutByDateList),const DeepCollectionEquality().hash(workoutsList),totalWorkoutDuration,workoutStartTime);

@override
String toString() {
  return 'WorkoutState(isLoading: $isLoading, isError: $isError, failure: $failure, isSuccess: $isSuccess, isAllSetCompleted: $isAllSetCompleted, totalVolume: $totalVolume, totalSet: $totalSet, dateList: $dateList, getWorkoutByDateList: $getWorkoutByDateList, workoutsList: $workoutsList, totalWorkoutDuration: $totalWorkoutDuration, workoutStartTime: $workoutStartTime)';
}


}

/// @nodoc
abstract mixin class $WorkoutStateCopyWith<$Res>  {
  factory $WorkoutStateCopyWith(WorkoutState value, $Res Function(WorkoutState) _then) = _$WorkoutStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, Failure? failure, bool isSuccess, bool isAllSetCompleted, double totalVolume, int totalSet, List<DateTime> dateList, List<Workout> getWorkoutByDateList, List<WorkoutExersiseModel> workoutsList, DateTime? totalWorkoutDuration, DateTime? workoutStartTime
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
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? failure = freezed,Object? isSuccess = null,Object? isAllSetCompleted = null,Object? totalVolume = null,Object? totalSet = null,Object? dateList = null,Object? getWorkoutByDateList = null,Object? workoutsList = null,Object? totalWorkoutDuration = freezed,Object? workoutStartTime = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isAllSetCompleted: null == isAllSetCompleted ? _self.isAllSetCompleted : isAllSetCompleted // ignore: cast_nullable_to_non_nullable
as bool,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,totalSet: null == totalSet ? _self.totalSet : totalSet // ignore: cast_nullable_to_non_nullable
as int,dateList: null == dateList ? _self.dateList : dateList // ignore: cast_nullable_to_non_nullable
as List<DateTime>,getWorkoutByDateList: null == getWorkoutByDateList ? _self.getWorkoutByDateList : getWorkoutByDateList // ignore: cast_nullable_to_non_nullable
as List<Workout>,workoutsList: null == workoutsList ? _self.workoutsList : workoutsList // ignore: cast_nullable_to_non_nullable
as List<WorkoutExersiseModel>,totalWorkoutDuration: freezed == totalWorkoutDuration ? _self.totalWorkoutDuration : totalWorkoutDuration // ignore: cast_nullable_to_non_nullable
as DateTime?,workoutStartTime: freezed == workoutStartTime ? _self.workoutStartTime : workoutStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  Failure? failure,  bool isSuccess,  bool isAllSetCompleted,  double totalVolume,  int totalSet,  List<DateTime> dateList,  List<Workout> getWorkoutByDateList,  List<WorkoutExersiseModel> workoutsList,  DateTime? totalWorkoutDuration,  DateTime? workoutStartTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.failure,_that.isSuccess,_that.isAllSetCompleted,_that.totalVolume,_that.totalSet,_that.dateList,_that.getWorkoutByDateList,_that.workoutsList,_that.totalWorkoutDuration,_that.workoutStartTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  Failure? failure,  bool isSuccess,  bool isAllSetCompleted,  double totalVolume,  int totalSet,  List<DateTime> dateList,  List<Workout> getWorkoutByDateList,  List<WorkoutExersiseModel> workoutsList,  DateTime? totalWorkoutDuration,  DateTime? workoutStartTime)  $default,) {final _that = this;
switch (_that) {
case _WorkoutState():
return $default(_that.isLoading,_that.isError,_that.failure,_that.isSuccess,_that.isAllSetCompleted,_that.totalVolume,_that.totalSet,_that.dateList,_that.getWorkoutByDateList,_that.workoutsList,_that.totalWorkoutDuration,_that.workoutStartTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  Failure? failure,  bool isSuccess,  bool isAllSetCompleted,  double totalVolume,  int totalSet,  List<DateTime> dateList,  List<Workout> getWorkoutByDateList,  List<WorkoutExersiseModel> workoutsList,  DateTime? totalWorkoutDuration,  DateTime? workoutStartTime)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.failure,_that.isSuccess,_that.isAllSetCompleted,_that.totalVolume,_that.totalSet,_that.dateList,_that.getWorkoutByDateList,_that.workoutsList,_that.totalWorkoutDuration,_that.workoutStartTime);case _:
  return null;

}
}

}

/// @nodoc


class _WorkoutState implements WorkoutState {
  const _WorkoutState({required this.isLoading, required this.isError, this.failure, required this.isSuccess, required this.isAllSetCompleted, required this.totalVolume, required this.totalSet, required final  List<DateTime> dateList, required final  List<Workout> getWorkoutByDateList, required final  List<WorkoutExersiseModel> workoutsList, required this.totalWorkoutDuration, required this.workoutStartTime}): _dateList = dateList,_getWorkoutByDateList = getWorkoutByDateList,_workoutsList = workoutsList;
  

@override final  bool isLoading;
@override final  bool isError;
@override final  Failure? failure;
@override final  bool isSuccess;
@override final  bool isAllSetCompleted;
@override final  double totalVolume;
@override final  int totalSet;
 final  List<DateTime> _dateList;
@override List<DateTime> get dateList {
  if (_dateList is EqualUnmodifiableListView) return _dateList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dateList);
}

 final  List<Workout> _getWorkoutByDateList;
@override List<Workout> get getWorkoutByDateList {
  if (_getWorkoutByDateList is EqualUnmodifiableListView) return _getWorkoutByDateList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_getWorkoutByDateList);
}

 final  List<WorkoutExersiseModel> _workoutsList;
@override List<WorkoutExersiseModel> get workoutsList {
  if (_workoutsList is EqualUnmodifiableListView) return _workoutsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workoutsList);
}

@override final  DateTime? totalWorkoutDuration;
@override final  DateTime? workoutStartTime;

/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkoutStateCopyWith<_WorkoutState> get copyWith => __$WorkoutStateCopyWithImpl<_WorkoutState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isAllSetCompleted, isAllSetCompleted) || other.isAllSetCompleted == isAllSetCompleted)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.totalSet, totalSet) || other.totalSet == totalSet)&&const DeepCollectionEquality().equals(other._dateList, _dateList)&&const DeepCollectionEquality().equals(other._getWorkoutByDateList, _getWorkoutByDateList)&&const DeepCollectionEquality().equals(other._workoutsList, _workoutsList)&&(identical(other.totalWorkoutDuration, totalWorkoutDuration) || other.totalWorkoutDuration == totalWorkoutDuration)&&(identical(other.workoutStartTime, workoutStartTime) || other.workoutStartTime == workoutStartTime));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,failure,isSuccess,isAllSetCompleted,totalVolume,totalSet,const DeepCollectionEquality().hash(_dateList),const DeepCollectionEquality().hash(_getWorkoutByDateList),const DeepCollectionEquality().hash(_workoutsList),totalWorkoutDuration,workoutStartTime);

@override
String toString() {
  return 'WorkoutState(isLoading: $isLoading, isError: $isError, failure: $failure, isSuccess: $isSuccess, isAllSetCompleted: $isAllSetCompleted, totalVolume: $totalVolume, totalSet: $totalSet, dateList: $dateList, getWorkoutByDateList: $getWorkoutByDateList, workoutsList: $workoutsList, totalWorkoutDuration: $totalWorkoutDuration, workoutStartTime: $workoutStartTime)';
}


}

/// @nodoc
abstract mixin class _$WorkoutStateCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory _$WorkoutStateCopyWith(_WorkoutState value, $Res Function(_WorkoutState) _then) = __$WorkoutStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, Failure? failure, bool isSuccess, bool isAllSetCompleted, double totalVolume, int totalSet, List<DateTime> dateList, List<Workout> getWorkoutByDateList, List<WorkoutExersiseModel> workoutsList, DateTime? totalWorkoutDuration, DateTime? workoutStartTime
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
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? failure = freezed,Object? isSuccess = null,Object? isAllSetCompleted = null,Object? totalVolume = null,Object? totalSet = null,Object? dateList = null,Object? getWorkoutByDateList = null,Object? workoutsList = null,Object? totalWorkoutDuration = freezed,Object? workoutStartTime = freezed,}) {
  return _then(_WorkoutState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isAllSetCompleted: null == isAllSetCompleted ? _self.isAllSetCompleted : isAllSetCompleted // ignore: cast_nullable_to_non_nullable
as bool,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,totalSet: null == totalSet ? _self.totalSet : totalSet // ignore: cast_nullable_to_non_nullable
as int,dateList: null == dateList ? _self._dateList : dateList // ignore: cast_nullable_to_non_nullable
as List<DateTime>,getWorkoutByDateList: null == getWorkoutByDateList ? _self._getWorkoutByDateList : getWorkoutByDateList // ignore: cast_nullable_to_non_nullable
as List<Workout>,workoutsList: null == workoutsList ? _self._workoutsList : workoutsList // ignore: cast_nullable_to_non_nullable
as List<WorkoutExersiseModel>,totalWorkoutDuration: freezed == totalWorkoutDuration ? _self.totalWorkoutDuration : totalWorkoutDuration // ignore: cast_nullable_to_non_nullable
as DateTime?,workoutStartTime: freezed == workoutStartTime ? _self.workoutStartTime : workoutStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
