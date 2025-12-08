import 'package:fitthread/Application/bloc/user_bloc.dart';
import 'package:fitthread/Presentation/Authentication/signup_screen.dart';
import 'package:fitthread/Presentation/Authentication/widgets.dart';
import 'package:fitthread/Presentation/Home%20Screen/home_screen.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final globalKey = GlobalKey<FormState>();

  final RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  );
  late TextEditingController passwordCntrl;
  late TextEditingController emailCntrl;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordCntrl = TextEditingController();
    emailCntrl = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    passwordCntrl.dispose();
    emailCntrl.dispose();
  }

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
                    child: Form(
                      key: globalKey,
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
                            controller: emailCntrl,
                            hintText: 'Enter your email',
                            inputType: TextInputType.emailAddress,
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
                            controller: passwordCntrl,
                            hintText: 'Enter your password',
                            isPassword: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your password.";
                              } else if (value.length < 8) {
                                return 'password must be greater than 8 characters';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30.h),

                  CustomAuthButton(
                    label: "Login",
                    onPressed: () {
                      globalKey.currentState!.validate();
                      if (globalKey.currentState!.validate()) {
                        BlocProvider.of<UserBloc>(context).add(
                          LogIn(
                            email: emailCntrl.text,
                            password: passwordCntrl.text,
                          ),
                        );
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }
                    },
                  ),

                  SizedBox(height: 40.h),
                  Text.rich(
                    TextSpan(
                      text: "Don't have an account? ",
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: TextStyle(color: AppColors.accentGreen),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SignupScreen(),
                                ),
                              );
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
    );
  }
}
