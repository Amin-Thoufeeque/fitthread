// import 'package:fitthread/Domain/models/dummy_data.dart';
import 'package:fitthread/Application/Exercise/exercise_bloc.dart';
import 'package:fitthread/Presentation/Admin/Home%20Screen/add_exercise_screen.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:fitthread/Presentation/Const/debouncer.dart';
import 'package:fitthread/Presentation/Const/other_screens/exercise_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  Debouncer debouncer = Debouncer(delay: Duration(milliseconds: 500));
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExerciseBloc>(context).add(GetExercise());
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainBackground,
        title: Text('Admin Panel'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<ExerciseBloc, ExerciseState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Exercises',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SearchBar(
                      elevation: WidgetStateProperty.all(0),
                      backgroundColor: WidgetStateProperty.all(
                        AppColors.darkBorder,
                      ),
                      hintText: 'Search',
                      trailing: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search),
                        ),
                      ],
                      onChanged: (value) {
                        debouncer.run(() {
                          context.read<ExerciseBloc>().add(
                            SearchExercise(value),
                          );
                        });
                      },
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: state.searchExerciseList.length,
                      itemBuilder: (context, index) {
                        final exercise = state.searchExerciseList[index];
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
                                                BlocProvider.of<ExerciseBloc>(
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
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => ExerciseDetailScreen(
                                      exercise: exercise,
                                    ),
                                  ),
                                );
                              },
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
