import 'package:fitthread/Domain/models/workout_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class WorkoutLocalDataSource {
  static const boxName = 'workouts_box';

  String _key(String userId, String dateTime) => '$userId|$dateTime';
  Future<Box> _openBox() async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box(boxName);
    }
    return await Hive.openBox(boxName);
  }

  Future<void> cacheWorkoutListByDate(
    List<Workout> workouts,
    String userId,
    String dateTime,
  ) async {
    final box = await _openBox();
    await box.put(
      _key(userId, dateTime),
      workouts.map((e) => e.toMap()).toList(),
    );
  }

  Future<List<Workout>?> getCacheWorkoutsByDate(
    String userId,
    String dateTime,
  ) async {
    final box = await _openBox();
    final data = box.get(_key(userId, dateTime));
    if (data == null) {
      return null;
    }
    return (data as List)
        .map((e) => Workout.fromMap(Map<String, dynamic>.from(e)))
        .toList();
  }

  Future<void> cacheDates(String userId, List<DateTime> dates) async {
    final box = await _openBox();
    await box.put(userId, dates.map((e) => e.toIso8601String()).toList());
  }

  Future<List<DateTime>?> getCachedDates(String userId) async {
    final box = await _openBox();
    final data = box.get(userId);

    if (data == null) return null;

    return (data as List).map((e) => DateTime.parse(e as String)).toList();
  }

  Future<void> clearCache() async {
    final box = await _openBox();
    await box.clear();
  }
}
