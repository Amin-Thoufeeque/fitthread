// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:fitthread/Domain/models/workout_exercise_model.dart';

class Workout {
  final String id;
  final String userId;
  final String title;
  final DateTime startTime;
  final List<WorkoutExersiseModel> exercises;
  Workout({
    required this.id,
    required this.userId,
    required this.title,
    required this.startTime,
    required this.exercises,
  });

  Workout copyWith({
    String? id,
    String? userId,
    String? title,
    DateTime? startTime,
    List<WorkoutExersiseModel>? exercises,
  }) {
    return Workout(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      startTime: startTime ?? this.startTime,
      exercises: exercises ?? this.exercises,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userId': userId,
      'title': title,
      'startTime': startTime.millisecondsSinceEpoch,
      'exercises': exercises.map((x) => x.toMap()).toList(),
    };
  }

  factory Workout.fromMap(Map<String, dynamic> map) {
    return Workout(
      id: map['_id'] as String,
      userId: map['userId'] as String,
      title: map['title'] as String,
      startTime: DateTime.fromMillisecondsSinceEpoch(map['startTime'] as int),
      exercises: List<WorkoutExersiseModel>.from(
        (map['exercises'] as List<int>).map<WorkoutExersiseModel>(
          (x) => WorkoutExersiseModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Workout.fromJson(String source) =>
      Workout.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Workout(id: $id, userId: $userId, title: $title, startTime: $startTime, exercises: $exercises)';
  }

  @override
  bool operator ==(covariant Workout other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.userId == userId &&
        other.title == title &&
        other.startTime == startTime &&
        listEquals(other.exercises, exercises);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userId.hashCode ^
        title.hashCode ^
        startTime.hashCode ^
        exercises.hashCode;
  }
}
