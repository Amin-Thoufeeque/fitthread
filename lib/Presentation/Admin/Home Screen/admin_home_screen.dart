import 'package:fitthread/Application/Workout/workout_bloc.dart';
// import 'package:fitthread/Domain/models/dummy_data.dart';
import 'package:fitthread/Presentation/Admin/Home%20Screen/add_exercise_screen.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<WorkoutBloc>(context).add(GetExercise());
    });
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<WorkoutBloc, WorkoutState>(
            builder: (context, state) {
              if (state.isLoading) {
                return Center(child: CircularProgressIndicator());
              }
              return Column(
                mainAxisSize: .min,
                children: [
                  Text(
                    'Exercises',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 35.h),
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state.exerciseList.length,
                      itemBuilder: (context, index) {
                        final exercise = state.exerciseList[index];
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Slidable(
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                SlidableAction(
                                  onPressed: (_) {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => AddExerciseScreen(
                                          isEditExercise: true,
                                          exercise: exercise,
                                        ),
                                      ),
                                    );
                                  },
                                  backgroundColor: AppColors.accentGreen,
                                  icon: Icons.edit,
                                  label: "Edit",
                                ),
                                SlidableAction(
                                  onPressed: (_) {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: const Text('Delete Exercise'),
                                          content: const Text(
                                            'Are you sure you want to delete this exercise?\n'
                                            'This action cannot be undone.',
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.of(
                                                context,
                                              ).pop(false),
                                              child: const Text('Cancel'),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                              ),
                                              onPressed: () {
                                                BlocProvider.of<WorkoutBloc>(
                                                  context,
                                                ).add(
                                                  DeleteExercise(
                                                    id: exercise.id,
                                                  ),
                                                );
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Delete'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  backgroundColor: Colors.red,
                                  icon: Icons.delete,
                                  label: "Delete",
                                ),
                              ],
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.all(12).w,

                              tileColor: AppColors.darkBorder,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusGeometry.circular(15),
                              ),
                              title: Text(
                                exercise.name,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                exercise.muscleGroup,
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                              trailing: Image.asset(
                                'assets/WorkoutIcons/gym.png',
                                color: AppColors.accentGreen,
                                scale: 1.5,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => AddExerciseScreen()));
        },
        backgroundColor: AppColors.accentGreen,
        child: Icon(Icons.add),
      ),
    );
  }
}
