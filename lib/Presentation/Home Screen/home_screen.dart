import 'package:fitthread/Presentation/Home%20Screen/widgets/workout_stats_tile.dart';
import 'package:fitthread/Presentation/colors.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        backgroundColor: AppColors.mainBackground,
        title: Text('Logo here'),
        actions: [CircleAvatar(backgroundColor: AppColors.primaryText)],
      ),
      backgroundColor: AppColors.mainBackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                //height: screenSize.height / 2.2,
                width: screenSize.width,
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TableCalendar(
                  selectedDayPredicate: (day) => true,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleTextStyle: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 20,
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
                    headerMargin: EdgeInsets.all(10),
                  ),

                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                    weekendStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                    dowTextFormatter: (date, locale) => DateFormat.E(
                      locale,
                    ).format(date).substring(0, 1).toUpperCase(),
                  ),
                  calendarStyle: CalendarStyle(
                    cellMargin: EdgeInsets.all(10),
                    selectedDecoration: BoxDecoration(
                      color: AppColors.accentGreen,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    selectedTextStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.cardBackground,
                    ),
                    outsideDaysVisible: false,
                    defaultTextStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryText,
                    ),
                    weekendTextStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primaryText,
                    ),
                  ),
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.now(),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WorkoutStatsTile(title: 'Total workout hours', stats: '36h'),
                  WorkoutStatsTile(title: 'Total workouts', stats: '157'),
                ],
              ),
              SizedBox(height: 10),
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
}
