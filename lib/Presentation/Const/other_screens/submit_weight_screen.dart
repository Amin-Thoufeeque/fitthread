import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:fitthread/Presentation/Const/other_screens/submit_height_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitWeightScreen extends StatefulWidget {
  final bool isUpdating;
  const SubmitWeightScreen({super.key, required this.isUpdating});

  @override
  State<SubmitWeightScreen> createState() => _SubmitWeightScreenState();
}

class _SubmitWeightScreenState extends State<SubmitWeightScreen> {
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
                  "What's your current weight?",
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120).w,
                  child: TextFormField(
                    controller: textCntrl,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return 'Please enter your weight';
                      }
                      final value = double.tryParse(val);

                      if (value! < 20 || value > 300) {
                        return "Enter a valid weight (20-300 kg)";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      counterText: "",
                      hintText: '80kg',
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
                      decimal: true,
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
            final weight = int.parse(textCntrl.text.trim());
            context.read<UserBloc>().add(UpdateWeight(weight: weight));
            if (widget.isUpdating) {
              Navigator.of(context).pop();
            } else {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SubmitHeightScreen(isUpdating: false),
                ),
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
