// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Domain/models/workout_set_model.dart';

class WorkoutExersiseModel {
  final Exercise exercise;
  final String quantifying;
  final List<WorkoutSet> sets;

  WorkoutExersiseModel({
    required this.exercise,
    required this.quantifying,
    required this.sets,
  });

  WorkoutExersiseModel copyWith({
    Exercise? exercise,
    String? quantifying,
    List<WorkoutSet>? sets,
  }) {
    return WorkoutExersiseModel(
      exercise: exercise ?? this.exercise,
      quantifying: quantifying ?? this.quantifying,
      sets: sets ?? this.sets,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exerciseDefinitionId': exercise.id,
      'quantifying': quantifying,
      'sets': sets.map((x) => x.toMap()).toList(),
    };
  }

  factory WorkoutExersiseModel.fromMap(Map<String, dynamic> map) {
    return WorkoutExersiseModel(
      exercise: Exercise.fromMap(map['exercise'] as Map<String, dynamic>),
      quantifying: map['quantifying'] as String,
      sets: List<WorkoutSet>.from(
        (map['sets'] as List<int>).map<WorkoutSet>(
          (x) => WorkoutSet.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkoutExersiseModel.fromJson(String source) =>
      WorkoutExersiseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'WorkoutExersiseModel(exercise: $exercise, quantifying: $quantifying, sets: $sets)';

  @override
  bool operator ==(covariant WorkoutExersiseModel other) {
    if (identical(this, other)) return true;

    return other.exercise == exercise &&
        other.quantifying == quantifying &&
        listEquals(other.sets, sets);
  }

  @override
  int get hashCode => exercise.hashCode ^ quantifying.hashCode ^ sets.hashCode;
}
