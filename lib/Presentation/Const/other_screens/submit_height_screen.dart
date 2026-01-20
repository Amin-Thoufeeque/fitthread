import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:fitthread/Presentation/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitHeightScreen extends StatefulWidget {
  final bool isUpdating;

  const SubmitHeightScreen({super.key, required this.isUpdating});

  @override
  State<SubmitHeightScreen> createState() => _SubmitHeightScreenState();
}

class _SubmitHeightScreenState extends State<SubmitHeightScreen> {
  late TextEditingController textCntrl;
  final globalKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textCntrl = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textCntrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainBackground,
        automaticallyImplyLeading: widget.isUpdating,
      ),
      body: SafeArea(
        child: Center(
          child: Form(
            key: globalKey,
            child: Column(
              crossAxisAlignment: .center,
              children: [
                SizedBox(height: 60.h),
                Text(
                  "What's your current height?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "This helps us to store your information accurately",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17.sp,
                    color: AppColors.secondaryText,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 160,
                  child: TextFormField(
                    controller: textCntrl,
                    errorBuilder: (context, errorText) {
                      return Text(errorText, style: TextStyle(fontSize: 10.sp));
                    },
                    validator: (val) {
                      final parsed = int.tryParse(val ?? '');
                      if (parsed == null || parsed <= 0) {
                        return "Enter valid height";
                      }
                      if (val == null || val.isEmpty) {
                        return 'Please enter your height';
                      }
                      final value = double.tryParse(val);

                      if (value! < 50 || value > 300) {
                        return "Enter a valid height (50-300 cm)";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: '180cm',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                    maxLength: 3,
                    autofocus: true,

                    style: TextStyle(
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w800,
                    ),

                    keyboardType: TextInputType.numberWithOptions(
                      decimal: false,
                      signed: false,
                    ),
                    cursorColor: AppColors.accentGreen,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (globalKey.currentState!.validate()) {
            final height = int.parse(textCntrl.text.trim());
            context.read<UserBloc>().add(UpdateHeight(height: height));
            if (widget.isUpdating) {
              Navigator.of(context).pop();
            } else {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => MainScreen()),
                (route) => false,
              );
            }
          }
        },
        backgroundColor: AppColors.accentGreen,
        child: Icon(Icons.check, color: AppColors.secondaryText),
      ),
    );
  }
}
