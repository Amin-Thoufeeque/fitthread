// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final String id;
  final String username;
  final String email;
  final String role;
  final int totalWorkouts;
  final int totalWorkoutDuration;
  final double fatPercentage;
  final double weightKg;
  final double heightCm;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.role,
    required this.totalWorkouts,
    required this.totalWorkoutDuration,
    required this.fatPercentage,
    required this.weightKg,
    required this.heightCm,
  });

  User copyWith({
    String? id,
    String? username,
    String? email,
    String? role,
    int? totalWorkouts,
    int? totalWorkoutDuration,
    double? fatPercentage,
    double? weightKg,
    double? heightCm,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      role: role ?? this.role,
      totalWorkouts: totalWorkouts ?? this.totalWorkouts,
      totalWorkoutDuration: totalWorkoutDuration ?? this.totalWorkoutDuration,
      fatPercentage: fatPercentage ?? this.fatPercentage,
      weightKg: weightKg ?? this.weightKg,
      heightCm: heightCm ?? this.heightCm,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': username,
      'email': email,
      'role': role,
      'totalWorkouts': totalWorkouts,
      'totalWorkoutDuration': totalWorkoutDuration,
      'fatPercentage': fatPercentage,
      'weightKg': weightKg,
      'heightCm': heightCm,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] as String,
      username: map['name'] as String,
      email: map['email'] as String,
      role: map['role'] as String,
      totalWorkouts: map['totalWorkouts'] as int,
      totalWorkoutDuration: map['totalWorkoutDuration'] as int,
      fatPercentage: (map['fatPercentage'] as num).toDouble(),
      weightKg: (map['weightKg'] as num).toDouble(),
      heightCm: (map['heightCm'] as num).toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, role: $role, totalWorkouts: $totalWorkouts, totalWorkoutDuration: $totalWorkoutDuration, fatPercentage: $fatPercentage, weightKg: $weightKg, heightCm: $heightCm)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.username == username &&
        other.email == email &&
        other.role == role &&
        other.totalWorkouts == totalWorkouts &&
        other.totalWorkoutDuration == totalWorkoutDuration &&
        other.fatPercentage == fatPercentage &&
        other.weightKg == weightKg &&
        other.heightCm == heightCm;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        email.hashCode ^
        role.hashCode ^
        totalWorkouts.hashCode ^
        totalWorkoutDuration.hashCode ^
        fatPercentage.hashCode ^
        weightKg.hashCode ^
        heightCm.hashCode;
  }
}
