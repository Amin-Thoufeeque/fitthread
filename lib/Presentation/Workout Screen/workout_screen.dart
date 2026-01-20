import 'package:fitthread/Presentation/Workout%20Screen/workout_detail_screen.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout', style: TextStyle(color: AppColors.primaryText)),
        centerTitle: true,
        backgroundColor: AppColors.mainBackground,
      ),
      backgroundColor: AppColors.mainBackground,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Click here to start your workout and access a wide variety of expertly designed exercises to help you train smarter and achieve better results.',
                style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0).w,
                child: MaterialButton(
                  height: 60.h,
                  minWidth: double.infinity,

                  elevation: 0,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WorkoutDetailScreen(),
                      ),
                    );
                  },
                  color: AppColors.accentGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  child: Text(
                    'Start Workout',
                    style: TextStyle(
                      color: AppColors.mainBackground,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}

class WeeklyStatsWorkoutTile extends StatelessWidget {
  const WeeklyStatsWorkoutTile({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });
  final IconData icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126.h,
      width: 115.w,
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.accentGreen, size: 40),
          SizedBox(height: 5.h),
          Text(
            value,
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primaryText,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.w200,
              color: AppColors.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}
