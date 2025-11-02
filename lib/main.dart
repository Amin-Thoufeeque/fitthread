import 'package:fitthread/Presentation/Authentication/signup_screen.dart';
import 'package:fitthread/Presentation/colors.dart';
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
      designSize: Size(390, 884),

      builder: (_, child) {
        return MaterialApp(
          title: 'Fitthread',
          debugShowCheckedModeBanner: false,

          theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: AppColors.accentGreen,
            scaffoldBackgroundColor: AppColors.mainBackground,

            // primaryTextTheme: TextTheme(
            //   labelMedium: TextStyle(color: AppColors.primaryText),
            //   labelLarge: TextStyle(color: AppColors.primaryText),
            //   labelSmall: TextStyle(color: AppColors.primaryText),
            // ),
            textTheme: GoogleFonts.lexendTextTheme().apply(
              bodyColor: AppColors.primaryText,
            ),
          ),
          home: const SignupScreen(),
        );
      },
    );
  }
}
