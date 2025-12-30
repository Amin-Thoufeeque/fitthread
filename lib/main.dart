import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Application/Workout/workout_bloc.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:fitthread/Presentation/splashscreen.dart';
import 'package:fitthread/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
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
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<UserBloc>()),
            BlocProvider(create: (context) => getIt<WorkoutBloc>()),
          ],

          child: MaterialApp(
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
            home: const Splashscreen(),
          ),
        );
      },
    );
  }
}
