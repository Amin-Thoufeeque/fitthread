import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:fitthread/Presentation/Const/other_screens/submit_height_screen.dart';
import 'package:fitthread/Presentation/Const/other_screens/submit_weight_screen.dart';
import 'package:fitthread/Presentation/Const/widgets/matric_card.dart';
import 'package:fitthread/Presentation/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserBloc>().state.user;

    return Scaffold(
      backgroundColor: AppColors.mainBackground,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: AppColors.cardBackground,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: AppColors.accentGreen.withAlpha(20),
                    child: Icon(
                      Icons.person,
                      size: 36,
                      color: AppColors.accentGreen,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user.username,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.accentGreen.withAlpha(15),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.favorite,
                                size: 14,
                                color: AppColors.accentGreen,
                              ),
                              SizedBox(width: 6.w),
                              Text(
                                'In good shape',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.accentGreen,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.h),

            Text(
              'Health Metrics',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12.h),

            MetricCard(
              icon: Icons.monitor_weight,
              title: 'Current Weight',
              value: '${context.read<UserBloc>().state.user.weightKg}kg',
              onUpdate: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SubmitWeightScreen(isUpdating: true),
                  ),
                );
              },
            ),

            SizedBox(height: 12.h),

            MetricCard(
              icon: Icons.height,
              title: 'Current Height',
              value: '${context.read<UserBloc>().state.user.heightCm}cm',
              onUpdate: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SubmitHeightScreen(isUpdating: true),
                  ),
                );
              },
            ),

            SizedBox(height: 40.h),

            Container(
              decoration: BoxDecoration(
                color: Colors.red.withAlpha(8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                onTap: () {
                  context.read<UserBloc>().add(LogOut());
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => Splashscreen()),
                  );
                },
                leading: const Icon(Icons.logout, color: Colors.red),
                title: const Text(
                  'Log out',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
