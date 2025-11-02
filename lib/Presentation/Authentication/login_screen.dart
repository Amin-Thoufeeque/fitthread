import 'package:fitthread/Presentation/Authentication/widgets.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  Text(
                    'FITTHREAD',
                    style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text('Welcome Back', style: TextStyle(fontSize: 28.sp)),
                  SizedBox(height: 10.h),
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

                        CustomAuthInputField(hintText: 'Enter your email',inputType: TextInputType.emailAddress,),

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
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),

                  CustomAuthButton(label: "Login"),

                  SizedBox(height: 40.h),
                  Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      children: [
                        TextSpan(
                          text: "Sign Up",
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
