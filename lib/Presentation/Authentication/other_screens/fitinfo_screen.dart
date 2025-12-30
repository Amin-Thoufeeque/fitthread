import 'package:fitthread/Presentation/Authentication/other_screens/weight_screen.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> fitScreenNotifier = ValueNotifier(1);

class FitinfoScreen extends StatelessWidget {
  final globalKey = GlobalKey<FormState>();
  FitinfoScreen({super.key});

  List<FitInfoWidget> get screens => [
    FitInfoWidget(
      globalKey: globalKey,
      fitInfo: 'weight',
      maxInputLength: 5,
      isDecimalAllowed: true,
      hintText: '75kg',
    ),
    FitInfoWidget(
      globalKey: globalKey,
      fitInfo: 'height',
      maxInputLength: 3,
      isDecimalAllowed: false,
      hintText: '180cm',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: fitScreenNotifier,
      builder: (context, value, _) {
        return Scaffold(
          body: screens[value],
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                SizedBox(
                  child: value == 0
                      ? SizedBox()
                      : IconButton(
                          onPressed: () {
                            if (fitScreenNotifier.value == 1) {
                              fitScreenNotifier.value = 0;
                            }
                          },
                          icon: Icon(Icons.arrow_back_ios_sharp),
                        ),
                ),
                TextButton(
                  onPressed: () {
                    if (fitScreenNotifier.value == 0) {
                      fitScreenNotifier.value = 1;
                    } else {
                      globalKey.currentState!.validate();
                    }
                  },
                  child: Text(value == 0 ? 'Next' : 'Submit'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
