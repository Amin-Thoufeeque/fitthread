import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrowseWorkoutsScreen extends StatefulWidget {
  const BrowseWorkoutsScreen({super.key});

  @override
  State<BrowseWorkoutsScreen> createState() => _BrowseWorkoutsScreenState();
}

bool isSelected = false;

class _BrowseWorkoutsScreenState extends State<BrowseWorkoutsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryText),
        ),
        title: Text(
          'Select Workout',
          style: TextStyle(color: AppColors.primaryText),
        ),
        centerTitle: true,
        backgroundColor: AppColors.mainBackground,
      ),
      backgroundColor: AppColors.mainBackground,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.all(12).w,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (!isSelected) {
                        isSelected = true;
                      } else {
                        isSelected = false;
                      }
                    });
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.all(12).w,
                    tileColor: isSelected
                        ? AppColors.accentGreen
                        : AppColors.darkBorder,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    ),
                    title: Text(
                      'Squats',
                      style: TextStyle(
                        color: isSelected
                            ? Colors.black
                            : AppColors.primaryText,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'Legs,Glutes',
                      style: TextStyle(
                        color: isSelected
                            ? AppColors.secondaryText
                            : AppColors.primaryText,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    trailing: Image.asset(
                      'assets/WorkoutIcons/gym.png',
                      color: isSelected
                          ? AppColors.darkBorder
                          : AppColors.accentGreen.withValues(alpha: 0.5),
                      scale: 1.5,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
