import 'package:fitthread/Application/Exercise/exercise_bloc.dart';
import 'package:fitthread/Application/User/user_bloc.dart';

import 'package:fitthread/Domain/models/exercise_model.dart';
import 'package:fitthread/Presentation/Const/colors.dart';
import 'package:fitthread/Presentation/Const/widgets/custom_input_field.dart';
import 'package:fitthread/Presentation/Const/widgets/custom_submit_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddExerciseScreen extends StatefulWidget {
  final bool isEditExercise;
  final Exercise? exercise;
  const AddExerciseScreen({
    super.key,
    this.isEditExercise = false,
    this.exercise,
  });

  @override
  State<AddExerciseScreen> createState() => _AddExerciseScreenState();
}

class _AddExerciseScreenState extends State<AddExerciseScreen> {
  late TextEditingController nameCntrl;
  late TextEditingController descriptionCntrl;
  late String selectedQuantifier;
  late String selectedMuscle;
  final globalKey = GlobalKey<FormState>();
  late final bool isEdit;
  late final Exercise exercise;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isEdit = widget.isEditExercise;
    exercise =
        widget.exercise ??
        Exercise(
          id: '',
          name: '',
          quantifying: 'reps',
          muscleGroup: 'Chest',
          description: '',
        );
    nameCntrl = TextEditingController();
    descriptionCntrl = TextEditingController();
    selectedQuantifier = exercise.quantifying;
    selectedMuscle = exercise.muscleGroup;
    if (widget.isEditExercise) {
      nameCntrl.text = exercise.name;
      descriptionCntrl.text = exercise.description;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameCntrl.dispose();
    descriptionCntrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.mainBackground,
        title: Text(
          widget.isEditExercise ? 'Edit Exercise' : 'Add Exercise',
          style: TextStyle(fontSize: 22.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: globalKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Custom Label
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 7,
                  ).h,
                  child: Text('Name'),
                ),

                CustomInputField(
                  controller: nameCntrl,
                  validator: (value) {
                    if (value != null && value.length > 2) {
                      return null;
                    }
                    return 'name must be greater than 2 characters';
                  },
                  hintText: 'Enter exercise name',
                  inputType: TextInputType.name,
                ),

                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 7,
                  ).h,
                  child: Text('Description'),
                ),
                CustomInputField(
                  controller: descriptionCntrl,

                  validator: (value) {
                    if (value != null && value.length > 5) {
                      return null;
                    }
                    return 'descripttion must be greater than 5 characters';
                  },
                  hintText: 'Enter exercise description',
                  isPassword: false,

                  maxLines: 6,
                ),
                SizedBox(height: 10.h),
                DropdownButtonFormField<String>(
                  dropdownColor: AppColors.cardBackground,

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.accentGreen),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.accentGreen),
                    ),
                    labelText: 'Select quantifier',
                    labelStyle: TextStyle(color: AppColors.primaryText),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: ['kg', 'reps', 'time']
                      .map(
                        (item) =>
                            DropdownMenuItem(value: item, child: Text(item)),
                      )
                      .toList(),
                  initialValue: selectedQuantifier,
                  onChanged: (value) {
                    setState(() {
                      selectedQuantifier = value!;
                    });
                  },
                ),
                SizedBox(height: 30.h),
                DropdownButtonFormField<String>(
                  dropdownColor: AppColors.cardBackground,

                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.accentGreen),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.accentGreen),
                    ),
                    labelText: 'Select muscle group',
                    labelStyle: TextStyle(color: AppColors.primaryText),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items:
                      [
                            "Chest",
                            "Upper Chest",
                            "Lower Chest",
                            "Back",
                            "Lats",
                            "Upper Back",
                            "Middle Back",
                            "Lower Back",
                            "Traps",
                            "Shoulders",
                            "Front Delts",
                            "Side Delts",
                            "Rear Delts",
                            "Biceps",
                            "Triceps",
                            "Forearms",
                            "Abs",
                            "Obliques",
                            "Core",
                            "Quads",
                            "Hamstrings",
                            "Glutes",
                            "Calves",
                            "Hip Flexors",
                            "Adductors",
                            "Abductors",
                            "Rotator Cuff",
                            "Neck",
                          ]
                          .map(
                            (item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ),
                          )
                          .toList(),
                  initialValue: selectedMuscle,
                  onChanged: (value) {
                    setState(() {
                      selectedMuscle = value!;
                    });
                  },
                ),
                SizedBox(height: 30.h),
                BlocListener<ExerciseBloc, ExerciseState>(
                  listener: (context, state) {
                    if (state.isSuccess &&
                        mounted &&
                        Navigator.canPop(context)) {
                      Navigator.of(context).pop();
                    }
                    if (state.isError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(state.failure!.message)),
                      );
                    }
                  },
                  child: BlocBuilder<ExerciseBloc, ExerciseState>(
                    builder: (context, state) {
                      return CustomSubmitButton(
                        label: 'Submit',
                        onPressed: () => _onSubmit(context),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onSubmit(BuildContext context) {
    if (!globalKey.currentState!.validate()) return;

    final exerciseBloc = context.read<ExerciseBloc>();

    if (isEdit) {
      exerciseBloc.add(
        EditExercise(
          exercise: exercise.copyWith(
            name: nameCntrl.text,
            description: descriptionCntrl.text,
            quantifying: selectedQuantifier,
            muscleGroup: selectedMuscle,
          ),
        ),
      );
    } else {
      exerciseBloc.add(
        AddExercise(
          name: nameCntrl.text,
          quantifying: selectedQuantifier,
          muscleGroup: selectedMuscle,
          description: descriptionCntrl.text,
          userId: context.read<UserBloc>().state.user.id,
        ),
      );
    }
  }
}
