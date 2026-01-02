import 'package:fitthread/Presentation/Workout%20Screen/workout_detail_screen.dart';
import 'package:fitthread/Presentation/colors.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10).w,
                    child: Text(
                      'Weekly stats',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      WeeklyStatsWorkoutTile(
                        icon: Icons.person,
                        value: '250',
                        label: 'Kcal',
                      ),
                      WeeklyStatsWorkoutTile(
                        icon: Icons.person,
                        value: '250',
                        label: 'Kcal',
                      ),
                      WeeklyStatsWorkoutTile(
                        icon: Icons.person,
                        value: '250',
                        label: 'Kcal',
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsGeometry.all(20.w),
                child: Container(
                  //height: 244,
                  //width: 343,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.accentGreen,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //SizedBox(height: 10),
                      Text(
                        'AI Workout Generator',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Our AI will select the perfect workout for you based on your requirements and historical data.',
                        style: TextStyle(fontSize: 17.sp),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: const EdgeInsets.all(8.0).w,
                        child: MaterialButton(
                          height: 60.h,
                          minWidth: double.infinity,

                          elevation: 0,
                          onPressed: () {},
                          color: AppColors.mainBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(15),
                          ),
                          child: Text(
                            'Get Workout',
                            style: TextStyle(
                              color: AppColors.accentGreen,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsGeometry.all(20.w),
                child: Container(
                  //height: 244,
                  //width: 343,
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 15.w,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.cardBackground,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //SizedBox(height: 10),
                      Text(
                        'Manual Selection',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryText,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Choose your workout from a curated list.',
                        style: TextStyle(
                          fontSize: 17.sp,
                          color: AppColors.primaryText,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h),
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
                            'Browse Workouts',
                            style: TextStyle(
                              color: AppColors.mainBackground,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
