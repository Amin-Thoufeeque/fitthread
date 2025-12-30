import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FitInfoWidget extends StatefulWidget {
  final String fitInfo;
  final int maxInputLength;
  final bool isDecimalAllowed;
  final String hintText;
  final GlobalKey<FormState> globalKey;
  const FitInfoWidget({
    super.key,
    required this.fitInfo,
    required this.maxInputLength,
    required this.isDecimalAllowed,
    required this.hintText,
    required this.globalKey,
  });

  @override
  State<FitInfoWidget> createState() => _FitInfoWidgetState();
}

class _FitInfoWidgetState extends State<FitInfoWidget> {
  late TextEditingController textCntrl;
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
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: .center,
            children: [
              SizedBox(height: 60.h),
              Text(
                "What's your current ${widget.fitInfo}?",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30.sp),
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
                  key: widget.globalKey,
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Please enter your ${widget.fitInfo}';
                    }
                    final value = double.tryParse(val);
                    if (widget.fitInfo == 'heighdt') {
                      if (value! < 50 || value > 300) {
                        return "Enter a valid height (50-300 cm)";
                      }
                    }
                    if (widget.fitInfo == 'weight') {
                      if (value! < 20 || value > 300) {
                        return "Enter a valid weight (20-300 kg)";
                      }
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: widget.hintText,
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 0, style: BorderStyle.none),
                    ),
                  ),
                  maxLength: widget.maxInputLength,
                  autofocus: true,

                  style: TextStyle(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.w800,
                  ),

                  keyboardType: TextInputType.numberWithOptions(
                    decimal: widget.isDecimalAllowed,
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
    );
  }
}
