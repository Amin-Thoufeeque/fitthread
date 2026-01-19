import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExerciseDetailScreen extends StatelessWidget {
  final Exercise exercise;
  const ExerciseDetailScreen({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainBackground),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(exercise.name, style: TextStyle(fontSize: 30.sp)),
                  SizedBox(height: 10.h),
                  Chip(
                    label: Text(
                      exercise.muscleGroup,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.cardBackground,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    backgroundColor: AppColors.accentGreen,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10).h,
              child: Divider(color: AppColors.secondaryText),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 20.sp,

                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    exercise.description,
                    style: TextStyle(
                      fontSize: 15.sp,

                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
