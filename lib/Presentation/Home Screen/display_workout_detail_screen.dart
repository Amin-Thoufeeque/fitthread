import 'package:fitthread/Domain/models/workout_exercise_model.dart';
import 'package:fitthread/Domain/models/workout_model.dart';
import 'package:fitthread/Presentation/Workout%20Screen/workout_detail_screen.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayWorkoutDetailScreen extends StatelessWidget {
  final Workout workout;

  const DisplayWorkoutDetailScreen({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBorder,
        automaticallyImplyLeading: true,
        title: Text(workout.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: WorkoutInfo(
                duration: '${workout.duration}min',
                volume: workout.totalWeightLifted.toString(),
                set: workout.totalWorkoutSet.toString(),
              ),
            ),
            Divider(),

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: workout.exercises.length,
              itemBuilder: (context, workoutIndex) {
                List<WorkoutExersiseModel> workoutsList = workout.exercises;
                final workoutSet = workoutsList[workoutIndex];

                return Column(
                  children: [
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Text(
                                  workoutSet.exercise.name,
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),

                            ListView.builder(
                              itemCount: workoutSet.sets.length,
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, setIndex) {
                                return ListTile(
                                  onTap: () {},

                                  title: Text('Set ${setIndex + 1}'),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      workoutSet.exercise.quantifying == "kg"
                                          ? Text(
                                              '${workoutSet.sets[setIndex].weightInKg} kg',
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          : Text(
                                              'min',
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                      SizedBox(width: 6.w),
                                      Text(
                                        '${workoutSet.sets[setIndex].reps} reps',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
