// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Exercise {
  final String id;
  final String name;
  final String quantifying;
  final String muscleGroup;
  final String description;

  Exercise({
    required this.id,
    required this.name,
    required this.quantifying,
    required this.muscleGroup,
    required this.description,
  });

  Exercise copyWith({
    String? id,
    String? name,
    String? quantifying,
    String? muscleGroup,
    String? description,
  }) {
    return Exercise(
      id: id ?? this.id,
      name: name ?? this.name,
      quantifying: quantifying ?? this.quantifying,
      muscleGroup: muscleGroup ?? this.muscleGroup,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'quantifying': quantifying,
      'muscleGroup': muscleGroup,
      'description': description,
    };
  }

  factory Exercise.fromMap(Map<String, dynamic> map) {
    return Exercise(
      id: map['_id'] as String,
      name: map['name'] as String,
      quantifying: map['quantifying'] as String,
      muscleGroup: map['muscleGroup'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Exercise.fromJson(String source) =>
      Exercise.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, quantifying: $quantifying, muscleGroup: $muscleGroup, description: $description)';
  }

  @override
  bool operator ==(covariant Exercise other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.quantifying == quantifying &&
        other.muscleGroup == muscleGroup &&
        other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        quantifying.hashCode ^
        muscleGroup.hashCode ^
        description.hashCode;
  }
}
