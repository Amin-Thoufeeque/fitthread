import 'package:fitthread/Domain/models/dummy_data.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkoutDetailScreen extends StatelessWidget {
  const WorkoutDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.mainBackground),
      body: SingleChildScrollView(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: workoutsList.length,
          itemBuilder: (context, index) {
            final workoutSet = workoutsList[index];
            final exercise = dummyexerlist.where((element) {
              if (element.id == workoutsList[index].exerciseId) {
                return true;
              }
              return false;
            }).toList();
            return Column(
              children: [
                SizedBox(height: 60.h),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          exercise[0].name,
                          style: TextStyle(
                            color: AppColors.primaryText,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        ListView.builder(
                          itemCount: workoutSet.sets.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Checkbox(value: false, onChanged: (value) {}),
                                Text('Set ${index + 1}'),
                                SizedBox(
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: .end,
                                      crossAxisAlignment: .center,
                                      children: [
                                        SizedBox(
                                          child: exercise[0].quantifying == "kg"
                                              ? MatrixTile(
                                                  matrix: 'kg',
                                                  isDecimalAllowed: true,
                                                )
                                              : MatrixTile(
                                                  matrix: 'min',
                                                  isDecimalAllowed: true,
                                                ),
                                        ),
                                        SizedBox(width: 6.w),
                                        MatrixTile(
                                          matrix: 'reps',
                                          isDecimalAllowed: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MaterialButton(
                            onPressed: () {},
                            minWidth: double.infinity,
                            padding: EdgeInsets.all(12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(10),
                            ),
                            color: AppColors.darkBorder,
                            elevation: 0,
                            child: Text(
                              '+ Add Set',
                              style: TextStyle(
                                color: AppColors.accentGreen,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class MatrixTile extends StatelessWidget {
  final String matrix;
  final bool isDecimalAllowed;
  const MatrixTile({
    super.key,
    required this.matrix,
    required this.isDecimalAllowed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37.h,
      width: 82.w,
      decoration: BoxDecoration(
        color: AppColors.darkBorder,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Center(
        child: Row(
          crossAxisAlignment: .center,

          children: [
            SizedBox(
              width: 41.w,
              child: TextField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  isDense: false,
                  contentPadding: EdgeInsets.zero,
                  constraints: BoxConstraints(minWidth: 40.w, maxHeight: 50.h),
                  counterText: "",
                  hintText: '00',
                  hintStyle: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0, style: BorderStyle.none),
                  ),
                ),
                maxLength: 3,
                autofocus: true,

                style: TextStyle(
                  height: 1,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.accentGreen,
                ),

                keyboardType: TextInputType.numberWithOptions(
                  decimal: isDecimalAllowed,
                  signed: false,
                ),
                cursorColor: AppColors.accentGreen,
                cursorHeight: 10.h,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s')),
                ],
              ),
            ),
            Text(matrix, style: TextStyle(fontSize: 13.sp)),
          ],
        ),
      ),
    );
  }
}
