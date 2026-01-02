import 'package:fitthread/Application/Workout/workout_bloc.dart';
import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrowseWorkoutsScreen extends StatefulWidget {
  const BrowseWorkoutsScreen({super.key});

  @override
  State<BrowseWorkoutsScreen> createState() => _BrowseWorkoutsScreenState();
}

class _BrowseWorkoutsScreenState extends State<BrowseWorkoutsScreen> {
  List<Exercise> selectedExerciseList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<WorkoutBloc>().add(GetExercise());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryText),
        ),
        title: Text(
          'Select Workout',
          style: TextStyle(color: AppColors.primaryText),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainBackground,
      ),
      backgroundColor: AppColors.mainBackground,
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        builder: (context, state) {
          if (state.isLoading) {
            Center(child: CircularProgressIndicator());
          }
          if (state.isError) {}
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: state.exerciseList.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Exercise exercise = state.exerciseList[index];
                    return Padding(
                      padding: const EdgeInsets.all(12).w,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (selectedExerciseList.contains(exercise)) {
                              selectedExerciseList.remove(exercise);
                            } else {
                              selectedExerciseList.add(exercise);
                            }
                          });
                        },
                        child: ListTile(
                          contentPadding: EdgeInsets.all(12).w,
                          tileColor: selectedExerciseList.contains(exercise)
                              ? AppColors.accentGreen
                              : AppColors.darkBorder,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                          title: Text(
                            exercise.name,
                            style: TextStyle(
                              color: selectedExerciseList.contains(exercise)
                                  ? Colors.black
                                  : AppColors.primaryText,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            exercise.muscleGroup,
                            style: TextStyle(
                              color: selectedExerciseList.contains(exercise)
                                  ? AppColors.secondaryText
                                  : AppColors.primaryText,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          trailing: Image.asset(
                            'assets/WorkoutIcons/gym.png',
                            color: selectedExerciseList.contains(exercise)
                                ? AppColors.darkBorder
                                : AppColors.accentGreen.withValues(alpha: 0.5),
                            scale: 1.5,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedExerciseList.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                showCloseIcon: true,
                closeIconColor: AppColors.accentGreen,
                content: Text(
                  'Select atleast one exercise',
                  style: TextStyle(color: AppColors.primaryText),
                ),
                backgroundColor: AppColors.cardBackground,
              ),
            );
          } else {
            context.read<WorkoutBloc>().add(
              GetWorkoutExercise(selectedExercises: selectedExerciseList),
            );
            Navigator.of(context).pop();
          }
        },
        backgroundColor: selectedExerciseList.isNotEmpty
            ? AppColors.accentGreen
            : AppColors.darkBorder,
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
