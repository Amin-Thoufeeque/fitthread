import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 50.h),
            Container(
              height: 200.h,
              width: double.infinity,

              margin: EdgeInsets.all(18.w),
              decoration: BoxDecoration(
                color: AppColors.accentGreen,
                borderRadius: BorderRadius.circular(20.w),
              ),
              child: Column(
                mainAxisAlignment: .center,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: .start,
                      children: [
                        CircleAvatar(
                          radius: 50.w,
                          backgroundImage: NetworkImage(
                            'https://intowellness.in/wp-content/uploads/2024/05/product-detail-banner.webp',
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              'Amin Thoufeeque',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Status: healthy',
                              style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Perfomance',
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
              ),
            ),

            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                Container(
                  height: 130.h,
                  width: 110.w,

                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      Icon(
                        Icons.fitness_center,
                        size: 40.w,
                        color: AppColors.accentGreen,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        'Monthly report',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130.h,

                  width: 110.w,

                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 45.w,
                        color: AppColors.accentGreen,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        'Calender',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 130.h,
                  width: 110.w,

                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      Icon(
                        Icons.handyman,
                        size: 40.w,
                        color: AppColors.accentGreen,
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        'Muscle Distribution',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
