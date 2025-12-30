// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:fitthread/Domain/models/workout_set_model.dart';

class WorkoutExersiseModel {
  final String id;
  final String exerciseId;
  final String quantifying;
  final List<WorkoutSet> sets;

  WorkoutExersiseModel({
    required this.id,
    required this.exerciseId,
    required this.quantifying,
    required this.sets,
  });

  WorkoutExersiseModel copyWith({
    String? id,
    String? exerciseId,
    String? quantifying,
    List<WorkoutSet>? sets,
  }) {
    return WorkoutExersiseModel(
      id: id ?? this.id,
      exerciseId: exerciseId ?? this.exerciseId,
      quantifying: quantifying ?? this.quantifying,
      sets: sets ?? this.sets,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'exerciseId': exerciseId,
      'quantifying': quantifying,
      'sets': sets.map((x) => x.toMap()).toList(),
    };
  }

  factory WorkoutExersiseModel.fromMap(Map<String, dynamic> map) {
    return WorkoutExersiseModel(
      id: map['_id'] as String,
      exerciseId: map['exerciseId'] as String,
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
  String toString() {
    return 'WorkoutExersiseModel(id: $id, exerciseId: $exerciseId, quantifying: $quantifying, sets: $sets)';
  }

  @override
  bool operator ==(covariant WorkoutExersiseModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.exerciseId == exerciseId &&
        other.quantifying == quantifying &&
        listEquals(other.sets, sets);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        exerciseId.hashCode ^
        quantifying.hashCode ^
        sets.hashCode;
  }
}
