import 'package:fitthread/Presentation/Home%20Screen/widgets/workout_stats_tile.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainBackground),
      backgroundColor: AppColors.mainBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: screenSize.height / 2.3,
                width: screenSize.width,
                color: AppColors.cardBackground,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutStatsTile(title: 'Total workout hours', stats: '36h'),
                  WorkoutStatsTile(title: 'Total workouts', stats: '157'),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutStatsTile(title: 'Body weight', stats: '70.5kg'),
                  WorkoutStatsTile(title: 'Body fat percentage', stats: '18%'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
