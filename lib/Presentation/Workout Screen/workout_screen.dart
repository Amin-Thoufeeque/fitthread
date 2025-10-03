import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Our AI will select the perfect workouts for you based on your requirements and historical data.',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                MaterialButton(
                  onPressed: () {},
                  color: AppColors.accentGreen,
                  child: Text('Get Workouts'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
