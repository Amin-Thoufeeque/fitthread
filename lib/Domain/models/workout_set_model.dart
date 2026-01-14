import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class WorkoutSet {
  final bool isCompleted;
  final int set;
  final int? reps;
  final double? timeInSeconds;
  final double? weightInKg;

  WorkoutSet({
    required this.isCompleted,
    required this.set,
    this.reps,
    this.timeInSeconds,
    this.weightInKg,
  });

  WorkoutSet copyWith({
    bool? isCompleted,
    int? set,
    int? reps,
    double? timeInSeconds,
    double? weightInKg,
  }) {
    return WorkoutSet(
      isCompleted: isCompleted ?? this.isCompleted,
      set: set ?? this.set,
      reps: reps ?? this.reps,
      timeInSeconds: timeInSeconds ?? this.timeInSeconds,
      weightInKg: weightInKg ?? this.weightInKg,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCompleted': isCompleted,
      'set': set,
      'reps': reps,
      'timeInSeconds': timeInSeconds,
      'weightInKg': weightInKg,
    };
  }

  factory WorkoutSet.fromMap(Map<String, dynamic> map) {
    return WorkoutSet(
      isCompleted: map['isCompleted'] ?? false,
      set: map['set'] as int,
      reps: map['reps'] != null ? map['reps'] as int : null,
      timeInSeconds: map['timeInSeconds'] != null
          ? (map['timeInSeconds'] as num).toDouble()
          : null,
      weightInKg: map['weightInKg'] != null
          ? (map['weightInKg'] as num).toDouble()
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkoutSet.fromJson(String source) =>
      WorkoutSet.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WorkoutSet(isCompleted: $isCompleted, set: $set, reps: $reps, timeInSeconds: $timeInSeconds, weightInKg: $weightInKg)';
  }

  @override
  bool operator ==(covariant WorkoutSet other) {
    if (identical(this, other)) return true;

    return other.isCompleted == isCompleted &&
        other.set == set &&
        other.reps == reps &&
        other.timeInSeconds == timeInSeconds &&
        other.weightInKg == weightInKg;
  }

  @override
  int get hashCode {
    return isCompleted.hashCode ^
        set.hashCode ^
        reps.hashCode ^
        timeInSeconds.hashCode ^
        weightInKg.hashCode;
  }
}
