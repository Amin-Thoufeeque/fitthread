import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAuthInputField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextInputType inputType;
  const CustomAuthInputField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.inputType = TextInputType.name,
  });

  @override
  State<CustomAuthInputField> createState() => _CustomAuthInputFieldState();
}

bool isObscure = true;

class _CustomAuthInputFieldState extends State<CustomAuthInputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.accentGreen,
      obscureText: widget.isPassword && isObscure,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
        filled: true,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  if (!isObscure) {
                    setState(() {
                      isObscure = true;
                    });
                  } else {
                    setState(() {
                      isObscure = false;
                    });
                  }
                },
                icon: isObscure
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
              )
            : SizedBox(),
        fillColor: AppColors.inputBackground,
        hintText: widget.hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(style: BorderStyle.none, width: 0),
        ),
      ),
    );
  }
}

class CustomAuthButton extends StatelessWidget {
  final String label;
  const CustomAuthButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      minWidth: double.infinity,
      height: 56.h,
      color: AppColors.accentGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(15),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: AppColors.darkOlive,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
