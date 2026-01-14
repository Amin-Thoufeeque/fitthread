import 'package:fitthread/Application/User/user_bloc.dart';
import 'package:fitthread/Application/Workout/workout_bloc.dart';
import 'package:fitthread/Presentation/Home%20Screen/display_workout_screen.dart';
import 'package:fitthread/Presentation/Home%20Screen/widgets/workout_stats_tile.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<WorkoutBloc>().add(
        GetWorkoutDates(userId: context.read<UserBloc>().state.user.id),
      );
    });
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        backgroundColor: AppColors.mainBackground,
        title: Text('Fitthread'),
      ),
      backgroundColor: AppColors.mainBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                //height: screenSize.height / 2.2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(10.w),
                ),
                child: BlocBuilder<WorkoutBloc, WorkoutState>(
                  builder: (context, state) {
                    return TableCalendar(
                      selectedDayPredicate: (day) {
                        return checkDate(day, state.dateList);
                      },

                      onDaySelected: (selectedDay, focusedDay) {
                        if (checkDate(selectedDay, state.dateList)) {
                          context.read<WorkoutBloc>().add(
                            GetWorkoutByDate(
                              userId: context.read<UserBloc>().state.user.id,
                              dateTime:
                                  '${selectedDay.year}-${selectedDay.month}-${selectedDay.day}',
                            ),
                          );
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DisplayWorkoutScreen(),
                            ),
                          );
                        }
                      },

                      headerStyle: HeaderStyle(
                        formatButtonVisible: false,
                        titleTextStyle: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 20.sp,
                        ),
                        titleCentered: true,
                        leftChevronIcon: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: AppColors.primaryText,
                        ),
                        rightChevronIcon: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.primaryText,
                        ),
                        headerMargin: EdgeInsets.all(10.w),
                      ),

                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.sp,
                        ),
                        weekendStyle: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.sp,
                        ),
                        dowTextFormatter: (date, locale) => DateFormat.E(
                          locale,
                        ).format(date).substring(0, 1).toUpperCase(),
                      ),
                      calendarStyle: CalendarStyle(
                        cellMargin: EdgeInsets.all(10),
                        selectedDecoration: BoxDecoration(
                          color: AppColors.accentGreen,
                          shape: BoxShape.circle,
                        ),
                        selectedTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.cardBackground,
                        ),
                        outsideDaysVisible: false,
                        defaultTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryText,
                        ),
                        weekendTextStyle: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primaryText,
                        ),
                      ),
                      focusedDay: DateTime.now(),
                      firstDay: DateTime.utc(2026, 1, 1),
                      lastDay: DateTime.now(),
                    );
                  },
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutStatsTile(title: 'Total workout hours', stats: '36h'),
                  WorkoutStatsTile(title: 'Total workouts', stats: '157'),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutStatsTile(title: 'Body weight', stats: '70.5kg'),
                  WorkoutStatsTile(title: 'Body fat percentage', stats: '18%'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool checkDate(DateTime day, List<DateTime> dateList) {
    return dateList.any(
      (date) =>
          date.year == day.year &&
          date.month == day.month &&
          date.day == day.day,
    );
  }
}
