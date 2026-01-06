import 'package:fitthread/Presentation/Home%20Screen/home_screen.dart';
import 'package:fitthread/Presentation/ProfileScreen/profile_screen.dart';
import 'package:fitthread/Presentation/Workout%20Screen/workout_screen.dart';
import 'package:fitthread/Presentation/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ValueNotifier<int> screenNotifier = ValueNotifier(0);

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  final screens = const [HomeScreen(), WorkoutScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: screenNotifier,
            builder: (context, index, _) {
              return screens[index];
            },
          ),
          CustomNavBar(),
        ],
      ),
    );
  }
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: screenNotifier,
      builder: (context, val, _) {
        return Align(
          alignment: AlignmentGeometry.bottomCenter,
          child: Container(
            height: 65.h,
            width: double.infinity,

            margin: EdgeInsets.only(bottom: 10.h, left: 35.w, right: 35.w),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(10.w),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(3, (index) {
                  final icons = [
                    Icons.home,
                    Icons.fitness_center,
                    Icons.person,
                  ];
                  final labels = ['Home', 'Workout', 'Profile'];
                  return CustomNavbarTile(
                    label: labels[index],
                    icon: icons[index],
                    isSelected: index == val,
                    onTap: () {
                      screenNotifier.value = index;
                    },
                  );
                }),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CustomNavbarTile extends StatelessWidget {
  const CustomNavbarTile({
    super.key,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });
  final String label;
  final IconData icon;
  final bool isSelected;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 25.w,
            color: isSelected ? AppColors.accentGreen : Colors.white,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: isSelected ? AppColors.accentGreen : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
