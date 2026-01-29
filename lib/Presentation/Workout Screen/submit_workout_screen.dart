import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Application/Workout/workout_bloc.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:fitthread/Presentation/Const/widgets/custom_input_field.dart';
import 'package:fitthread/Presentation/Workout%20Screen/workout_detail_screen.dart';
import 'package:fitthread/Presentation/main_screen.dart';
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
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);

    return '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    titleCntrl.dispose();
    super.dispose();
  }

  void _saveWorkout(BuildContext context) {
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
      MaterialPageRoute(builder: (_) => const MainScreen()),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Save Workout',
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryText,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.accentGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () => _saveWorkout(context),
              child: const Text('Save'),
            ),
          ),
        ],
      ),
      body: BlocBuilder<WorkoutBloc, WorkoutState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Workout Title
                  CustomInputField(
                    hintText: 'Workout Title',
                    controller: titleCntrl,
                    validator: (_) => null,
                  ),

                  SizedBox(height: 20.h),

                  /// Workout Summary Card
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.cardBackground,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: WorkoutInfo(
                      duration: _formatTime(widget.workoutDuration),
                      volume: state.totalVolume.toString(),
                      set: state.totalSet.toString(),
                    ),
                  ),

                  SizedBox(height: 16.h),

                  /// Date & Time
                  Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: AppColors.darkBorder.withOpacity(0.3),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 20,
                          color: AppColors.secondaryText,
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Workout Time',
                              style: TextStyle(
                                fontSize: 11.sp,
                                color: AppColors.secondaryText,
                              ),
                            ),
                            Text(
                              DateFormat(
                                'd MMM yyyy, hh:mm a',
                              ).format(state.workoutStartTime!),
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 40.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
