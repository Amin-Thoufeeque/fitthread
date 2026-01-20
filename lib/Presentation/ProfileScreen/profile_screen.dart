import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:fitthread/Presentation/Const/other_screens/submit_height_screen.dart';
import 'package:fitthread/Presentation/Const/other_screens/submit_weight_screen.dart';
import 'package:fitthread/Presentation/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: AppColors.cardBackground,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: .center,

            children: [
              SizedBox(height: 50.h),
              Text(
                context.read<UserBloc>().state.user.username,
                style: TextStyle(fontSize: 25.sp),
              ),
              SizedBox(height: 20.h),
              Chip(
                label: Text('In good shape', style: TextStyle(fontSize: 15.sp)),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Health Matrics',
                    style: TextStyle(fontSize: 17.sp),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  contentPadding: EdgeInsets.all(10),
                  tileColor: AppColors.cardBackground,
                  leading: Icon(Icons.monitor_weight, size: 40),
                  title: Text('Current Weight'),
                  subtitle: Text('188kg'),
                  trailing: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              SubmitWeightScreen(isUpdating: true),
                        ),
                      );
                    },
                    color: AppColors.accentGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    child: Text('Update'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  contentPadding: EdgeInsets.all(10),
                  tileColor: AppColors.cardBackground,
                  leading: Icon(Icons.height, size: 40),
                  title: Text('Current Height'),
                  subtitle: Text('188cm'),
                  trailing: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              SubmitHeightScreen(isUpdating: true),
                        ),
                      );
                    },
                    color: AppColors.accentGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    child: Text('Update'),
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    context.read<UserBloc>().add(LogOut());
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Splashscreen()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  contentPadding: EdgeInsets.all(10),
                  tileColor: AppColors.inputBackground,
                  leading: Icon(Icons.exit_to_app, size: 35),
                  title: Text('Log out'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
