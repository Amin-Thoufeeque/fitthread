import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Application/Workout/workout_bloc.dart';
import 'package:fitthread/Presentation/Workout%20Screen/workout_detail_screen.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:fitthread/Presentation/main_screen.dart';
import 'package:fitthread/Presentation/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class SubmitWorkoutScreen extends StatefulWidget {
  final Duration workoutDuration;
  const SubmitWorkoutScreen({super.key, required this.workoutDuration});

  @override
  State<SubmitWorkoutScreen> createState() => _SubmitWorkoutScreenState();
}

class _SubmitWorkoutScreenState extends State<SubmitWorkoutScreen> {
  final titleCntrl = TextEditingController();
  String _formatTime(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    final hours = duration.inHours;

    return '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    titleCntrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBorder,
        title: Text('Save Workout'),
        automaticallyImplyLeading: true,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: MaterialButton(
              onPressed: () {
                if (titleCntrl.text.isEmpty) {
                  titleCntrl.text = 'Workout';
                }
                context.read<WorkoutBloc>().add(
                  AddWorkout(
                    title: titleCntrl.text,
                    workoutDuration: widget.workoutDuration,
                    userId: context.read<UserBloc>().state.user.id,
                  ),
                );
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => MainScreen()),
                  (route) => false,
                );
              },
              minWidth: 10,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              color: AppColors.darkBorder,
              elevation: 0,
              child: Text(
                'Save',
                style: TextStyle(
                  color: AppColors.accentGreen,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  CustomInputField(
                    hintText: 'Workout Title',
                    controller: titleCntrl,
                    validator: (value) {
                      return null;
                    },
                  ),
                  SizedBox(height: 20.h),
                  WorkoutInfo(
                    duration: _formatTime(widget.workoutDuration),
                    volume: state.totalVolume.toString(),
                    set: state.totalSet.toString(),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 46,
                    ).h,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'When',
                          style: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 10.sp,
                          ),
                        ),
                        Text(
                          DateFormat(
                            'd MMM yyyy, hh:mm a',
                          ).format(state.workoutStartTime!),
                          style: TextStyle(fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
