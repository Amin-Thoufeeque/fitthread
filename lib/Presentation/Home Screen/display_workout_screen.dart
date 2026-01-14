import 'package:fitthread/Application/Workout/workout_bloc.dart';
import 'package:fitthread/Presentation/Home%20Screen/display_workout_detail_screen.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayWorkoutScreen extends StatelessWidget {
  const DisplayWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
        backgroundColor: AppColors.cardBackground,
      ),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(state.getWorkoutByDateList.length, (index) {
                  final workout = state.getWorkoutByDateList[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                DisplayWorkoutDetailScreen(workout: workout),
                          ),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5),
                      ),
                      tileColor: AppColors.cardBackground,
                      contentPadding: EdgeInsets.all(10),
                      leading: Text(
                        '${index + 1}',
                        style: TextStyle(fontSize: 20.sp),
                      ),
                      title: Text(
                        workout.title,
                        style: TextStyle(fontSize: 25.sp),
                      ),
                    ),
                  );
                }),
              ],
            ),
          );
        },
      ),
    );
  }
}
