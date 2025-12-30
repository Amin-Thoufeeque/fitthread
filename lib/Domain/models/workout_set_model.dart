import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class WorkoutSet {
  final String id;
  final int set;
  final int? reps;
  final int? timeInSeconds;
  final double? weightInKg;

  WorkoutSet({
    required this.id,
    required this.set,
    this.reps,
    this.timeInSeconds,
    this.weightInKg,
  });

  WorkoutSet copyWith({
    String? id,
    int? set,
    int? reps,
    int? timeInSeconds,
    double? weightInKg,
  }) {
    return WorkoutSet(
      id: id ?? this.id,
      set: set ?? this.set,
      reps: reps ?? this.reps,
      timeInSeconds: timeInSeconds ?? this.timeInSeconds,
      weightInKg: weightInKg ?? this.weightInKg,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'set': set,
      'reps': reps,
      'timeInSeconds': timeInSeconds,
      'weightInKg': weightInKg,
    };
  }

  factory WorkoutSet.fromMap(Map<String, dynamic> map) {
    return WorkoutSet(
      id: map['id'] as String,
      set: map['set'] as int,
      reps: map['reps'] != null ? map['reps'] as int : null,
      timeInSeconds: map['timeInSeconds'] != null
          ? map['timeInSeconds'] as int
          : null,
      weightInKg: map['weightInKg'] != null
          ? map['weightInKg'] as double
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkoutSet.fromJson(String source) =>
      WorkoutSet.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WorkoutSet(id: $id, set: $set, reps: $reps, timeInSeconds: $timeInSeconds, weightInKg: $weightInKg)';
  }

  @override
  bool operator ==(covariant WorkoutSet other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.set == set &&
        other.reps == reps &&
        other.timeInSeconds == timeInSeconds &&
        other.weightInKg == weightInKg;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        set.hashCode ^
        reps.hashCode ^
        timeInSeconds.hashCode ^
        weightInKg.hashCode;
  }
}
