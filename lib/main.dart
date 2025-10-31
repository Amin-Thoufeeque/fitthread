import 'package:fitthread/Presentation/Workout%20Screen/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),

      builder: (_, child) {
        return MaterialApp(
          title: 'Fitthread',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            textTheme: GoogleFonts.lexendTextTheme(),
          ),
          home: const WorkoutScreen(),
        );
      },
    );
  }
}
