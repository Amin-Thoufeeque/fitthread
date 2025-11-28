class User {
  final String id;
  final String username;
  final String email;
  final int totalWorkouts;
  final int totalWorkoutDuration;
  final double fatPercentage;
  final double weightKg;
  final double heightCm;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.totalWorkouts,
    required this.totalWorkoutDuration,
    required this.fatPercentage,
    required this.weightKg,
    required this.heightCm,
  });
}
