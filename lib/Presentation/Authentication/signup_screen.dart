import 'package:fitthread/Presentation/Authentication/widgets.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0).w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.asset(
                    'assets/WorkoutIcons/gym.png',
                    color: AppColors.accentGreen,
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'Create Your Account',
                    style: TextStyle(
                      fontSize: 30.sp,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15.h),

                  Text(
                    'Start your fitness journey today',
                    style: TextStyle(
                      fontSize: 16.sp,
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  //Custom InputBox
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Custom Label
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 7,
                          ).h,
                          child: Text('Email'),
                        ),

                        CustomAuthInputField(
                          hintText: 'Enter your email',
                          inputType: TextInputType.emailAddress,
                        ),

                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 7,
                          ).h,
                          child: Text('Password'),
                        ),
                        CustomAuthInputField(
                          hintText: 'Enter your password',
                          isPassword: true,
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 7,
                          ).h,
                          child: Text('Confirm Password'),
                        ),

                        CustomAuthInputField(
                          hintText: 'Confirm your password',
                          isPassword: true,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),

                  CustomAuthButton(label: 'Sign Up'),
                  SizedBox(height: 40.h),
                  Text.rich(
                    TextSpan(
                      text: "Already have an account? ",
                      children: [
                        TextSpan(
                          text: "Log In",
                          style: TextStyle(color: AppColors.accentGreen),
                        ),
                      ],
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
