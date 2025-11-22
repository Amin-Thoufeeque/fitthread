import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoNetworkWidget extends StatelessWidget {
  const NoNetworkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: .center,
        mainAxisAlignment: .center,
        children: [
          Icon(
            Icons.signal_wifi_off_outlined,
            size: 80.h,
            color: AppColors.accentGreen,
          ),
          Text(
            'No Network.Please try again later.',
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).w,
            child: MaterialButton(
              onPressed: () {},
              padding: EdgeInsets.all(15.w),
              minWidth: double.maxFinite,
              color: AppColors.accentGreen,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20.w),
              ),
              child: Text(
                'Retry',
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
