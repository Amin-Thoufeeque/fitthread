import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final String hintText;
  final bool isPassword;
  final TextInputType inputType;
  final FormFieldValidator validator;
  final TextEditingController controller;
  final int? maxLength;
  final int maxLines;
  const CustomInputField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.inputType = TextInputType.name,
    required this.controller,
    required this.validator,
    this.maxLength,
    this.maxLines = 1,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

bool isObscure = true;

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      cursorColor: AppColors.accentGreen,
      obscureText: widget.isPassword && isObscure,
      maxLength: widget.maxLength,
      keyboardType: widget.inputType,
      maxLines: widget.maxLines,
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
