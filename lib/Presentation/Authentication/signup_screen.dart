import 'package:fitthread/Application/User/user_bloc.dart';

import 'package:fitthread/Presentation/colors.dart';
import 'package:fitthread/Presentation/widgets/custom_input_field.dart';
import 'package:fitthread/Presentation/widgets/custom_submit_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late TextEditingController passwordCntrl;
  late TextEditingController emailCntrl;
  late TextEditingController nameCntrl;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    passwordCntrl = TextEditingController();
    emailCntrl = TextEditingController();
    nameCntrl = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameCntrl.dispose();
    passwordCntrl.dispose();
    emailCntrl.dispose();
  }

  final RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  final globalKey = GlobalKey<FormState>();

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
              child: Form(
                key: globalKey,
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
                            child: Text('Username'),
                          ),

                          CustomInputField(
                            controller: nameCntrl,
                            validator: (value) {
                              if (value != null && value.length > 2) {
                                return null;
                              }
                              return 'name must be greater than 2 characters';
                            },
                            hintText: 'Enter your username',
                            inputType: TextInputType.name,
                          ),

                          SizedBox(height: 10.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ).h,
                            child: Text('Email'),
                          ),
                          CustomInputField(
                            controller: emailCntrl,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your email.";
                              } else if (!emailValidatorRegExp.hasMatch(
                                value,
                              )) {
                                return "Please enter a valid email address";
                              }
                              return null;
                            },
                            hintText: 'Enter your email',
                            isPassword: false,
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 7,
                            ).h,
                            child: Text('Password'),
                          ),

                          CustomInputField(
                            hintText: 'Enter your password',

                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your password.";
                              } else if (value.length < 8) {
                                return 'password must be greater than 8 characters';
                              }
                              return null;
                            },
                            controller: passwordCntrl,
                            inputType: TextInputType.name,
                            isPassword: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),

                    CustomSubmitButton(
                      label: 'Sign Up',
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          BlocProvider.of<UserBloc>(context).add(
                            SignUp(
                              username: nameCntrl.text,
                              email: emailCntrl.text,
                              password: passwordCntrl.text,
                            ),
                          );
                        }
                      },
                    ),
                    SizedBox(height: 40.h),
                    Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        children: [
                          TextSpan(
                            text: "Log In",
                            style: TextStyle(color: AppColors.accentGreen),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).pop();
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
