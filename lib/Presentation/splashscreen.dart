import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Presentation/Admin/Home%20Screen/admin_home_screen.dart';
import 'package:fitthread/Presentation/Authentication/login_screen.dart';

import 'package:fitthread/Presentation/colors.dart';
import 'package:fitthread/Presentation/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<UserBloc>(context).add(ValidateUser());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        if (state.isTokenValid) {
          if (state.user.role == 'admin') {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => AdminHomeScreen()),
            );
          } else {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          }
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        }
      },
      child: Scaffold(
        body: Center(
          child: Icon(
            Icons.fitness_center,
            color: AppColors.accentGreen,
            size: 30,
          ),
        ),
      ),
    );
  }
}
