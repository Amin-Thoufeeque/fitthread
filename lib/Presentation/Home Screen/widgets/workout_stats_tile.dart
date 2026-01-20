import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:flutter/material.dart';

class WorkoutStatsTile extends StatelessWidget {
  const WorkoutStatsTile({super.key, required this.title, required this.stats});
  final String title;
  final String stats;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 100,
      width: screenSize.width / 2.2,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.primaryText,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),

          Text(
            stats,
            style: TextStyle(
              color: AppColors.accentGreen,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
