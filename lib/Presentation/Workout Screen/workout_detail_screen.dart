// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:fitthread/Application/Workout/workout_bloc.dart';
import 'package:fitthread/Presentation/Workout%20Screen/browse_workout_screen.dart';
import 'package:fitthread/Presentation/Workout%20Screen/submit_workout_screen.dart';
import 'package:fitthread/Presentation/colors.dart';

class WorkoutDetailScreen extends StatefulWidget {
  const WorkoutDetailScreen({super.key});

  @override
  State<WorkoutDetailScreen> createState() => _WorkoutDetailScreenState();
}

class _WorkoutDetailScreenState extends State<WorkoutDetailScreen> {
  final Map<String, TextEditingController> _controllers = {};
  String _formatTime(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    final hours = duration.inHours;

    return '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}:'
        '${seconds.toString().padLeft(2, '0')}';
  }

  late Duration elapsed;
  TextEditingController _getController({
    required int workoutIndex,
    required int setIndex,
    required String field,
    String initialValue = '',
  }) {
    final key = '$workoutIndex-$setIndex-$field';

    return _controllers.putIfAbsent(
      key,
      () => TextEditingController(text: initialValue),
    );
  }

  Timer? _uiTimer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<WorkoutBloc>().add(StartWorkoutTimer());
    _uiTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _uiTimer?.cancel();
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutBloc, WorkoutState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        if (state.workoutStartTime == null) {
          elapsed = Duration.zero;
        } else {
          elapsed = DateTime.now().difference(state.workoutStartTime!);
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.darkBorder,
            automaticallyImplyLeading: false,
            title: Text('Log Workout'),

            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            SubmitWorkoutScreen(workoutDuration: elapsed),
                      ),
                    );
                  },
                  minWidth: 10,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  color: AppColors.darkBorder,
                  elevation: 0,
                  child: Text(
                    'Finish',
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: WorkoutInfo(
                    duration: _formatTime(elapsed),
                    volume: state.totalVolume.toString(),
                    set: state.totalSet.toString(),
                  ),
                ),
                Divider(),
                Visibility(
                  visible: state.workoutsList.isEmpty,
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      SizedBox(height: 10.h),
                      Icon(Icons.fitness_center, size: 50.h),
                      SizedBox(height: 10.h),
                      Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'Add an exercise to start your workout',
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      SizedBox(height: 15.h),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: state.workoutsList.length,
                  itemBuilder: (context, workoutIndex) {
                    final workoutSet = state.workoutsList[workoutIndex];

                    return Column(
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: .start,
                              children: [
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  children: [
                                    Text(
                                      workoutSet.exercise.name,
                                      style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        context.read<WorkoutBloc>().add(
                                          RemoveSelectedExercise(
                                            selectedWorkoutIndex: workoutIndex,
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.close),
                                    ),
                                  ],
                                ),
                                Visibility(
                                  visible: workoutSet.sets.isEmpty
                                      ? true
                                      : false,
                                  child: Center(child: Text('no set added')),
                                ),

                                ListView.builder(
                                  itemCount: workoutSet.sets.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, setIndex) {
                                    final kgController = _getController(
                                      workoutIndex: workoutIndex,
                                      setIndex: setIndex,
                                      field: 'kg',
                                      initialValue:
                                          workoutSet.sets[setIndex].weightInKg
                                              ?.toString() ??
                                          '',
                                    );
                                    final repController = _getController(
                                      workoutIndex: workoutIndex,
                                      setIndex: setIndex,
                                      field: 'rep',
                                      initialValue:
                                          workoutSet.sets[setIndex].reps
                                              ?.toString() ??
                                          '',
                                    );
                                    final timeController = _getController(
                                      workoutIndex: workoutIndex,
                                      setIndex: setIndex,
                                      field: 'time',
                                      initialValue:
                                          workoutSet
                                              .sets[setIndex]
                                              .timeInSeconds
                                              ?.toString() ??
                                          '',
                                    );
                                    return Slidable(
                                      key: ValueKey(
                                        'set-$workoutIndex-$setIndex',
                                      ),
                                      endActionPane: ActionPane(
                                        motion: const ScrollMotion(),
                                        extentRatio: 0.17,
                                        children: [
                                          SlidableAction(
                                            onPressed: (context) {
                                              final keysToRemove = _controllers
                                                  .keys
                                                  .where(
                                                    (k) => k.startsWith(
                                                      '$workoutIndex-$setIndex-',
                                                    ),
                                                  )
                                                  .toList();

                                              for (final key in keysToRemove) {
                                                _controllers[key]?.dispose();
                                                _controllers.remove(key);
                                              }
                                              context.read<WorkoutBloc>().add(
                                                DeleteWorkoutSet(
                                                  workoutIndex: workoutIndex,
                                                  setIndex: setIndex,
                                                ),
                                              );
                                            },
                                            icon: Icons.delete,
                                            backgroundColor: Colors.red,
                                          ),
                                        ],
                                      ),
                                      child: InkWell(
                                        child: ListTile(
                                          onTap: () {
                                            context.read<WorkoutBloc>().add(
                                              CompleteWorkoutSet(
                                                workoutIndex: workoutIndex,
                                                setIndex: setIndex,
                                                weight:
                                                    kgController.text.isNotEmpty
                                                    ? kgController.text
                                                    : '0.0',
                                                time:
                                                    timeController
                                                        .text
                                                        .isNotEmpty
                                                    ? timeController.text
                                                    : '0.0',
                                                reps:
                                                    repController
                                                        .text
                                                        .isNotEmpty
                                                    ? repController.text
                                                    : '0',
                                              ),
                                            );
                                            FocusScope.of(context).unfocus();
                                            print('pressing');
                                            print(kgController.text);
                                          },
                                          leading: Checkbox(
                                            value: state
                                                .workoutsList[workoutIndex]
                                                .sets[setIndex]
                                                .isCompleted,
                                            onChanged: null,
                                          ),

                                          title: Text('Set ${setIndex + 1}'),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              workoutSet.exercise.quantifying ==
                                                      "kg"
                                                  ? MatrixTile(
                                                      matrix: 'kg',
                                                      isDecimalAllowed: true,
                                                      controller: kgController,
                                                      onEditingComplete: () {},
                                                      isCompleted: state
                                                          .workoutsList[workoutIndex]
                                                          .sets[setIndex]
                                                          .isCompleted,
                                                    )
                                                  : MatrixTile(
                                                      matrix: 'min',
                                                      isDecimalAllowed: true,
                                                      controller:
                                                          timeController,
                                                      onEditingComplete: () {},
                                                      isCompleted: state
                                                          .workoutsList[workoutIndex]
                                                          .sets[setIndex]
                                                          .isCompleted,
                                                    ),
                                              SizedBox(width: 6.w),
                                              MatrixTile(
                                                matrix: 'reps',
                                                isDecimalAllowed: false,
                                                controller: repController,
                                                onEditingComplete: () {},
                                                isCompleted: state
                                                    .workoutsList[workoutIndex]
                                                    .sets[setIndex]
                                                    .isCompleted,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MaterialButton(
                                    onPressed: () {
                                      context.read<WorkoutBloc>().add(
                                        AddWorkoutSet(
                                          workoutIndex: workoutIndex,
                                        ),
                                      );
                                    },
                                    minWidth: double.infinity,
                                    padding: EdgeInsets.all(12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(10),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => BrowseWorkoutsScreen(),
                        ),
                      );
                    },
                    minWidth: double.infinity,
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    color: AppColors.accentGreen,
                    elevation: 0,
                    child: Text(
                      'Add Exercise',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    padding: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                    color: AppColors.cardBackground,
                    elevation: 0,
                    child: Text(
                      'Discard Workout',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        );
      },
    );
  }
}

class WorkoutInfo extends StatelessWidget {
  final String duration;
  final String volume;
  final String set;
  const WorkoutInfo({
    super.key,
    required this.duration,
    required this.volume,
    required this.set,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceAround,
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Duration',
              style: TextStyle(color: AppColors.secondaryText, fontSize: 10.sp),
            ),
            Text(duration, style: TextStyle(fontWeight: FontWeight.w100)),
          ],
        ),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Volume',
              style: TextStyle(color: AppColors.secondaryText, fontSize: 10.sp),
            ),
            Text('$volume kg', style: TextStyle(fontWeight: FontWeight.w100)),
          ],
        ),
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Set',
              style: TextStyle(color: AppColors.secondaryText, fontSize: 10.sp),
            ),
            Text(set, style: TextStyle(fontWeight: FontWeight.w100)),
          ],
        ),
      ],
    );
  }
}

class MatrixTile extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onEditingComplete;
  final String matrix;
  final bool isDecimalAllowed;
  final bool isCompleted;
  const MatrixTile({
    super.key,
    required this.matrix,
    required this.isDecimalAllowed,
    required this.controller,
    required this.onEditingComplete,
    required this.isCompleted,
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
                controller: controller,
                enabled: !isCompleted,
                readOnly: isCompleted,
                onEditingComplete: onEditingComplete,
                onSubmitted: (_) {
                  FocusScope.of(context).unfocus();
                },
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
                autofocus: false,

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
