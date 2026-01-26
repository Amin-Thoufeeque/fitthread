import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ExerciseLocalDataSource {
  final boxName = 'exercise-box';
  final key = 'exercise';
  Future<Box> _openBox() async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box(boxName);
    }
    return await Hive.openBox(boxName);
  }

  Future<void> chacheExercises(List<Exercise> exercises) async {
    final box = await _openBox();
    await box.clear();
    await box.put(key, exercises.map((e) => e.toMap()).toList());
  }

  Future<List<Exercise>?> getCachedExercise() async {
    final box = await _openBox();
    final data = await box.get(key);
    if (data == null) return null;
    return (data as List)
        .map((e) => Exercise.fromMap(Map<String, dynamic>.from(e)))
        .toList();
  }

  Future<void> clearCache() async {
    final box = await _openBox();
    await box.delete(key);
  }
}
