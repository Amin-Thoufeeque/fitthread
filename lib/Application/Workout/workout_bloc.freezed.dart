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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetExercise value)?  getExercise,TResult Function( AddExercise value)?  addExercise,TResult Function( DeleteExercise value)?  deleteExercise,TResult Function( EditExercise value)?  editExercise,TResult Function( GetSelectedExercise value)?  getSelectedExercise,TResult Function( GetWorkoutExercise value)?  getWorkoutExercise,TResult Function( AddWorkoutSet value)?  addWorkoutSet,TResult Function( DeleteWorkoutSet value)?  deleteWorkoutSet,TResult Function( CompleteWorkoutSet value)?  completeWorkoutSet,TResult Function( RemoveSelectedExercise value)?  removeSelectedExercise,TResult Function( AddNewSelectedExercise value)?  addNewSelectedExercise,TResult Function( StartWorkoutTimer value)?  startWorkoutTimer,TResult Function( DiscardWorkout value)?  discardWorkout,TResult Function( CheckSetCompletion value)?  checkSetCompletion,TResult Function( AddWorkout value)?  addWorkout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise(_that);case AddExercise() when addExercise != null:
return addExercise(_that);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that);case EditExercise() when editExercise != null:
return editExercise(_that);case GetSelectedExercise() when getSelectedExercise != null:
return getSelectedExercise(_that);case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer(_that);case DiscardWorkout() when discardWorkout != null:
return discardWorkout(_that);case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion(_that);case AddWorkout() when addWorkout != null:
return addWorkout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetExercise value)  getExercise,required TResult Function( AddExercise value)  addExercise,required TResult Function( DeleteExercise value)  deleteExercise,required TResult Function( EditExercise value)  editExercise,required TResult Function( GetSelectedExercise value)  getSelectedExercise,required TResult Function( GetWorkoutExercise value)  getWorkoutExercise,required TResult Function( AddWorkoutSet value)  addWorkoutSet,required TResult Function( DeleteWorkoutSet value)  deleteWorkoutSet,required TResult Function( CompleteWorkoutSet value)  completeWorkoutSet,required TResult Function( RemoveSelectedExercise value)  removeSelectedExercise,required TResult Function( AddNewSelectedExercise value)  addNewSelectedExercise,required TResult Function( StartWorkoutTimer value)  startWorkoutTimer,required TResult Function( DiscardWorkout value)  discardWorkout,required TResult Function( CheckSetCompletion value)  checkSetCompletion,required TResult Function( AddWorkout value)  addWorkout,}){
final _that = this;
switch (_that) {
case GetExercise():
return getExercise(_that);case AddExercise():
return addExercise(_that);case DeleteExercise():
return deleteExercise(_that);case EditExercise():
return editExercise(_that);case GetSelectedExercise():
return getSelectedExercise(_that);case GetWorkoutExercise():
return getWorkoutExercise(_that);case AddWorkoutSet():
return addWorkoutSet(_that);case DeleteWorkoutSet():
return deleteWorkoutSet(_that);case CompleteWorkoutSet():
return completeWorkoutSet(_that);case RemoveSelectedExercise():
return removeSelectedExercise(_that);case AddNewSelectedExercise():
return addNewSelectedExercise(_that);case StartWorkoutTimer():
return startWorkoutTimer(_that);case DiscardWorkout():
return discardWorkout(_that);case CheckSetCompletion():
return checkSetCompletion(_that);case AddWorkout():
return addWorkout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetExercise value)?  getExercise,TResult? Function( AddExercise value)?  addExercise,TResult? Function( DeleteExercise value)?  deleteExercise,TResult? Function( EditExercise value)?  editExercise,TResult? Function( GetSelectedExercise value)?  getSelectedExercise,TResult? Function( GetWorkoutExercise value)?  getWorkoutExercise,TResult? Function( AddWorkoutSet value)?  addWorkoutSet,TResult? Function( DeleteWorkoutSet value)?  deleteWorkoutSet,TResult? Function( CompleteWorkoutSet value)?  completeWorkoutSet,TResult? Function( RemoveSelectedExercise value)?  removeSelectedExercise,TResult? Function( AddNewSelectedExercise value)?  addNewSelectedExercise,TResult? Function( StartWorkoutTimer value)?  startWorkoutTimer,TResult? Function( DiscardWorkout value)?  discardWorkout,TResult? Function( CheckSetCompletion value)?  checkSetCompletion,TResult? Function( AddWorkout value)?  addWorkout,}){
final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise(_that);case AddExercise() when addExercise != null:
return addExercise(_that);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that);case EditExercise() when editExercise != null:
return editExercise(_that);case GetSelectedExercise() when getSelectedExercise != null:
return getSelectedExercise(_that);case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer(_that);case DiscardWorkout() when discardWorkout != null:
return discardWorkout(_that);case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion(_that);case AddWorkout() when addWorkout != null:
return addWorkout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getExercise,TResult Function( String name,  String quantifying,  String muscleGroup,  String description,  String userId)?  addExercise,TResult Function( String id)?  deleteExercise,TResult Function( Exercise exercise)?  editExercise,TResult Function( List<Exercise> selectedExercises)?  getSelectedExercise,TResult Function( List<Exercise> selectedExercises)?  getWorkoutExercise,TResult Function( int workoutIndex)?  addWorkoutSet,TResult Function( int workoutIndex,  int setIndex)?  deleteWorkoutSet,TResult Function( int workoutIndex,  int setIndex,  String weight,  String time,  String reps)?  completeWorkoutSet,TResult Function( int selectedWorkoutIndex)?  removeSelectedExercise,TResult Function( List<Exercise> newExerciseList)?  addNewSelectedExercise,TResult Function()?  startWorkoutTimer,TResult Function()?  discardWorkout,TResult Function()?  checkSetCompletion,TResult Function( String title,  Duration workoutDuration,  String userId)?  addWorkout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise();case AddExercise() when addExercise != null:
return addExercise(_that.name,_that.quantifying,_that.muscleGroup,_that.description,_that.userId);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that.id);case EditExercise() when editExercise != null:
return editExercise(_that.exercise);case GetSelectedExercise() when getSelectedExercise != null:
return getSelectedExercise(_that.selectedExercises);case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that.selectedExercises);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that.workoutIndex);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that.workoutIndex,_that.setIndex);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that.workoutIndex,_that.setIndex,_that.weight,_that.time,_that.reps);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that.selectedWorkoutIndex);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that.newExerciseList);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer();case DiscardWorkout() when discardWorkout != null:
return discardWorkout();case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion();case AddWorkout() when addWorkout != null:
return addWorkout(_that.title,_that.workoutDuration,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getExercise,required TResult Function( String name,  String quantifying,  String muscleGroup,  String description,  String userId)  addExercise,required TResult Function( String id)  deleteExercise,required TResult Function( Exercise exercise)  editExercise,required TResult Function( List<Exercise> selectedExercises)  getSelectedExercise,required TResult Function( List<Exercise> selectedExercises)  getWorkoutExercise,required TResult Function( int workoutIndex)  addWorkoutSet,required TResult Function( int workoutIndex,  int setIndex)  deleteWorkoutSet,required TResult Function( int workoutIndex,  int setIndex,  String weight,  String time,  String reps)  completeWorkoutSet,required TResult Function( int selectedWorkoutIndex)  removeSelectedExercise,required TResult Function( List<Exercise> newExerciseList)  addNewSelectedExercise,required TResult Function()  startWorkoutTimer,required TResult Function()  discardWorkout,required TResult Function()  checkSetCompletion,required TResult Function( String title,  Duration workoutDuration,  String userId)  addWorkout,}) {final _that = this;
switch (_that) {
case GetExercise():
return getExercise();case AddExercise():
return addExercise(_that.name,_that.quantifying,_that.muscleGroup,_that.description,_that.userId);case DeleteExercise():
return deleteExercise(_that.id);case EditExercise():
return editExercise(_that.exercise);case GetSelectedExercise():
return getSelectedExercise(_that.selectedExercises);case GetWorkoutExercise():
return getWorkoutExercise(_that.selectedExercises);case AddWorkoutSet():
return addWorkoutSet(_that.workoutIndex);case DeleteWorkoutSet():
return deleteWorkoutSet(_that.workoutIndex,_that.setIndex);case CompleteWorkoutSet():
return completeWorkoutSet(_that.workoutIndex,_that.setIndex,_that.weight,_that.time,_that.reps);case RemoveSelectedExercise():
return removeSelectedExercise(_that.selectedWorkoutIndex);case AddNewSelectedExercise():
return addNewSelectedExercise(_that.newExerciseList);case StartWorkoutTimer():
return startWorkoutTimer();case DiscardWorkout():
return discardWorkout();case CheckSetCompletion():
return checkSetCompletion();case AddWorkout():
return addWorkout(_that.title,_that.workoutDuration,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getExercise,TResult? Function( String name,  String quantifying,  String muscleGroup,  String description,  String userId)?  addExercise,TResult? Function( String id)?  deleteExercise,TResult? Function( Exercise exercise)?  editExercise,TResult? Function( List<Exercise> selectedExercises)?  getSelectedExercise,TResult? Function( List<Exercise> selectedExercises)?  getWorkoutExercise,TResult? Function( int workoutIndex)?  addWorkoutSet,TResult? Function( int workoutIndex,  int setIndex)?  deleteWorkoutSet,TResult? Function( int workoutIndex,  int setIndex,  String weight,  String time,  String reps)?  completeWorkoutSet,TResult? Function( int selectedWorkoutIndex)?  removeSelectedExercise,TResult? Function( List<Exercise> newExerciseList)?  addNewSelectedExercise,TResult? Function()?  startWorkoutTimer,TResult? Function()?  discardWorkout,TResult? Function()?  checkSetCompletion,TResult? Function( String title,  Duration workoutDuration,  String userId)?  addWorkout,}) {final _that = this;
switch (_that) {
case GetExercise() when getExercise != null:
return getExercise();case AddExercise() when addExercise != null:
return addExercise(_that.name,_that.quantifying,_that.muscleGroup,_that.description,_that.userId);case DeleteExercise() when deleteExercise != null:
return deleteExercise(_that.id);case EditExercise() when editExercise != null:
return editExercise(_that.exercise);case GetSelectedExercise() when getSelectedExercise != null:
return getSelectedExercise(_that.selectedExercises);case GetWorkoutExercise() when getWorkoutExercise != null:
return getWorkoutExercise(_that.selectedExercises);case AddWorkoutSet() when addWorkoutSet != null:
return addWorkoutSet(_that.workoutIndex);case DeleteWorkoutSet() when deleteWorkoutSet != null:
return deleteWorkoutSet(_that.workoutIndex,_that.setIndex);case CompleteWorkoutSet() when completeWorkoutSet != null:
return completeWorkoutSet(_that.workoutIndex,_that.setIndex,_that.weight,_that.time,_that.reps);case RemoveSelectedExercise() when removeSelectedExercise != null:
return removeSelectedExercise(_that.selectedWorkoutIndex);case AddNewSelectedExercise() when addNewSelectedExercise != null:
return addNewSelectedExercise(_that.newExerciseList);case StartWorkoutTimer() when startWorkoutTimer != null:
return startWorkoutTimer();case DiscardWorkout() when discardWorkout != null:
return discardWorkout();case CheckSetCompletion() when checkSetCompletion != null:
return checkSetCompletion();case AddWorkout() when addWorkout != null:
return addWorkout(_that.title,_that.workoutDuration,_that.userId);case _:
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


class GetSelectedExercise implements WorkoutEvent {
  const GetSelectedExercise({required final  List<Exercise> selectedExercises}): _selectedExercises = selectedExercises;
  

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
$GetSelectedExerciseCopyWith<GetSelectedExercise> get copyWith => _$GetSelectedExerciseCopyWithImpl<GetSelectedExercise>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetSelectedExercise&&const DeepCollectionEquality().equals(other._selectedExercises, _selectedExercises));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedExercises));

@override
String toString() {
  return 'WorkoutEvent.getSelectedExercise(selectedExercises: $selectedExercises)';
}


}

/// @nodoc
abstract mixin class $GetSelectedExerciseCopyWith<$Res> implements $WorkoutEventCopyWith<$Res> {
  factory $GetSelectedExerciseCopyWith(GetSelectedExercise value, $Res Function(GetSelectedExercise) _then) = _$GetSelectedExerciseCopyWithImpl;
@useResult
$Res call({
 List<Exercise> selectedExercises
});




}
/// @nodoc
class _$GetSelectedExerciseCopyWithImpl<$Res>
    implements $GetSelectedExerciseCopyWith<$Res> {
  _$GetSelectedExerciseCopyWithImpl(this._self, this._then);

  final GetSelectedExercise _self;
  final $Res Function(GetSelectedExercise) _then;

/// Create a copy of WorkoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedExercises = null,}) {
  return _then(GetSelectedExercise(
selectedExercises: null == selectedExercises ? _self._selectedExercises : selectedExercises // ignore: cast_nullable_to_non_nullable
as List<Exercise>,
  ));
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
mixin _$WorkoutState {

 bool get isLoading; bool get isError; String get errorMessage; bool get isSuccess; bool get isAllSetCompleted; double get totalVolume; int get totalSet; List<Exercise> get exerciseList; List<Exercise> get selectedExerciseList; List<WorkoutExersiseModel> get workoutsList; DateTime? get totalWorkoutDuration; DateTime? get workoutStartTime;
/// Create a copy of WorkoutState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkoutStateCopyWith<WorkoutState> get copyWith => _$WorkoutStateCopyWithImpl<WorkoutState>(this as WorkoutState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkoutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isAllSetCompleted, isAllSetCompleted) || other.isAllSetCompleted == isAllSetCompleted)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.totalSet, totalSet) || other.totalSet == totalSet)&&const DeepCollectionEquality().equals(other.exerciseList, exerciseList)&&const DeepCollectionEquality().equals(other.selectedExerciseList, selectedExerciseList)&&const DeepCollectionEquality().equals(other.workoutsList, workoutsList)&&(identical(other.totalWorkoutDuration, totalWorkoutDuration) || other.totalWorkoutDuration == totalWorkoutDuration)&&(identical(other.workoutStartTime, workoutStartTime) || other.workoutStartTime == workoutStartTime));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,isSuccess,isAllSetCompleted,totalVolume,totalSet,const DeepCollectionEquality().hash(exerciseList),const DeepCollectionEquality().hash(selectedExerciseList),const DeepCollectionEquality().hash(workoutsList),totalWorkoutDuration,workoutStartTime);

@override
String toString() {
  return 'WorkoutState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, isSuccess: $isSuccess, isAllSetCompleted: $isAllSetCompleted, totalVolume: $totalVolume, totalSet: $totalSet, exerciseList: $exerciseList, selectedExerciseList: $selectedExerciseList, workoutsList: $workoutsList, totalWorkoutDuration: $totalWorkoutDuration, workoutStartTime: $workoutStartTime)';
}


}

/// @nodoc
abstract mixin class $WorkoutStateCopyWith<$Res>  {
  factory $WorkoutStateCopyWith(WorkoutState value, $Res Function(WorkoutState) _then) = _$WorkoutStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, String errorMessage, bool isSuccess, bool isAllSetCompleted, double totalVolume, int totalSet, List<Exercise> exerciseList, List<Exercise> selectedExerciseList, List<WorkoutExersiseModel> workoutsList, DateTime? totalWorkoutDuration, DateTime? workoutStartTime
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
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = null,Object? isSuccess = null,Object? isAllSetCompleted = null,Object? totalVolume = null,Object? totalSet = null,Object? exerciseList = null,Object? selectedExerciseList = null,Object? workoutsList = null,Object? totalWorkoutDuration = freezed,Object? workoutStartTime = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isAllSetCompleted: null == isAllSetCompleted ? _self.isAllSetCompleted : isAllSetCompleted // ignore: cast_nullable_to_non_nullable
as bool,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,totalSet: null == totalSet ? _self.totalSet : totalSet // ignore: cast_nullable_to_non_nullable
as int,exerciseList: null == exerciseList ? _self.exerciseList : exerciseList // ignore: cast_nullable_to_non_nullable
as List<Exercise>,selectedExerciseList: null == selectedExerciseList ? _self.selectedExerciseList : selectedExerciseList // ignore: cast_nullable_to_non_nullable
as List<Exercise>,workoutsList: null == workoutsList ? _self.workoutsList : workoutsList // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String errorMessage,  bool isSuccess,  bool isAllSetCompleted,  double totalVolume,  int totalSet,  List<Exercise> exerciseList,  List<Exercise> selectedExerciseList,  List<WorkoutExersiseModel> workoutsList,  DateTime? totalWorkoutDuration,  DateTime? workoutStartTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.isSuccess,_that.isAllSetCompleted,_that.totalVolume,_that.totalSet,_that.exerciseList,_that.selectedExerciseList,_that.workoutsList,_that.totalWorkoutDuration,_that.workoutStartTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String errorMessage,  bool isSuccess,  bool isAllSetCompleted,  double totalVolume,  int totalSet,  List<Exercise> exerciseList,  List<Exercise> selectedExerciseList,  List<WorkoutExersiseModel> workoutsList,  DateTime? totalWorkoutDuration,  DateTime? workoutStartTime)  $default,) {final _that = this;
switch (_that) {
case _WorkoutState():
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.isSuccess,_that.isAllSetCompleted,_that.totalVolume,_that.totalSet,_that.exerciseList,_that.selectedExerciseList,_that.workoutsList,_that.totalWorkoutDuration,_that.workoutStartTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  String errorMessage,  bool isSuccess,  bool isAllSetCompleted,  double totalVolume,  int totalSet,  List<Exercise> exerciseList,  List<Exercise> selectedExerciseList,  List<WorkoutExersiseModel> workoutsList,  DateTime? totalWorkoutDuration,  DateTime? workoutStartTime)?  $default,) {final _that = this;
switch (_that) {
case _WorkoutState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.isSuccess,_that.isAllSetCompleted,_that.totalVolume,_that.totalSet,_that.exerciseList,_that.selectedExerciseList,_that.workoutsList,_that.totalWorkoutDuration,_that.workoutStartTime);case _:
  return null;

}
}

}

/// @nodoc


class _WorkoutState implements WorkoutState {
  const _WorkoutState({required this.isLoading, required this.isError, required this.errorMessage, required this.isSuccess, required this.isAllSetCompleted, required this.totalVolume, required this.totalSet, required final  List<Exercise> exerciseList, required final  List<Exercise> selectedExerciseList, required final  List<WorkoutExersiseModel> workoutsList, required this.totalWorkoutDuration, required this.workoutStartTime}): _exerciseList = exerciseList,_selectedExerciseList = selectedExerciseList,_workoutsList = workoutsList;
  

@override final  bool isLoading;
@override final  bool isError;
@override final  String errorMessage;
@override final  bool isSuccess;
@override final  bool isAllSetCompleted;
@override final  double totalVolume;
@override final  int totalSet;
 final  List<Exercise> _exerciseList;
@override List<Exercise> get exerciseList {
  if (_exerciseList is EqualUnmodifiableListView) return _exerciseList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exerciseList);
}

 final  List<Exercise> _selectedExerciseList;
@override List<Exercise> get selectedExerciseList {
  if (_selectedExerciseList is EqualUnmodifiableListView) return _selectedExerciseList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedExerciseList);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkoutState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.isAllSetCompleted, isAllSetCompleted) || other.isAllSetCompleted == isAllSetCompleted)&&(identical(other.totalVolume, totalVolume) || other.totalVolume == totalVolume)&&(identical(other.totalSet, totalSet) || other.totalSet == totalSet)&&const DeepCollectionEquality().equals(other._exerciseList, _exerciseList)&&const DeepCollectionEquality().equals(other._selectedExerciseList, _selectedExerciseList)&&const DeepCollectionEquality().equals(other._workoutsList, _workoutsList)&&(identical(other.totalWorkoutDuration, totalWorkoutDuration) || other.totalWorkoutDuration == totalWorkoutDuration)&&(identical(other.workoutStartTime, workoutStartTime) || other.workoutStartTime == workoutStartTime));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,isSuccess,isAllSetCompleted,totalVolume,totalSet,const DeepCollectionEquality().hash(_exerciseList),const DeepCollectionEquality().hash(_selectedExerciseList),const DeepCollectionEquality().hash(_workoutsList),totalWorkoutDuration,workoutStartTime);

@override
String toString() {
  return 'WorkoutState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, isSuccess: $isSuccess, isAllSetCompleted: $isAllSetCompleted, totalVolume: $totalVolume, totalSet: $totalSet, exerciseList: $exerciseList, selectedExerciseList: $selectedExerciseList, workoutsList: $workoutsList, totalWorkoutDuration: $totalWorkoutDuration, workoutStartTime: $workoutStartTime)';
}


}

/// @nodoc
abstract mixin class _$WorkoutStateCopyWith<$Res> implements $WorkoutStateCopyWith<$Res> {
  factory _$WorkoutStateCopyWith(_WorkoutState value, $Res Function(_WorkoutState) _then) = __$WorkoutStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, String errorMessage, bool isSuccess, bool isAllSetCompleted, double totalVolume, int totalSet, List<Exercise> exerciseList, List<Exercise> selectedExerciseList, List<WorkoutExersiseModel> workoutsList, DateTime? totalWorkoutDuration, DateTime? workoutStartTime
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
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = null,Object? isSuccess = null,Object? isAllSetCompleted = null,Object? totalVolume = null,Object? totalSet = null,Object? exerciseList = null,Object? selectedExerciseList = null,Object? workoutsList = null,Object? totalWorkoutDuration = freezed,Object? workoutStartTime = freezed,}) {
  return _then(_WorkoutState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,isAllSetCompleted: null == isAllSetCompleted ? _self.isAllSetCompleted : isAllSetCompleted // ignore: cast_nullable_to_non_nullable
as bool,totalVolume: null == totalVolume ? _self.totalVolume : totalVolume // ignore: cast_nullable_to_non_nullable
as double,totalSet: null == totalSet ? _self.totalSet : totalSet // ignore: cast_nullable_to_non_nullable
as int,exerciseList: null == exerciseList ? _self._exerciseList : exerciseList // ignore: cast_nullable_to_non_nullable
as List<Exercise>,selectedExerciseList: null == selectedExerciseList ? _self._selectedExerciseList : selectedExerciseList // ignore: cast_nullable_to_non_nullable
as List<Exercise>,workoutsList: null == workoutsList ? _self._workoutsList : workoutsList // ignore: cast_nullable_to_non_nullable
as List<WorkoutExersiseModel>,totalWorkoutDuration: freezed == totalWorkoutDuration ? _self.totalWorkoutDuration : totalWorkoutDuration // ignore: cast_nullable_to_non_nullable
as DateTime?,workoutStartTime: freezed == workoutStartTime ? _self.workoutStartTime : workoutStartTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
