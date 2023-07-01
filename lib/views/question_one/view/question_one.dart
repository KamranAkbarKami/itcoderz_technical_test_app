import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/reusable_widgets/reusable_button.dart';
import 'package:kamran_akbar_technical_test_app/utills/spacing.dart';

import '../../../reusable_widgets/reusable_appbar.dart';
import '../../../utills/text_styles.dart';
import '../controller/question_one_controller.dart';

class QuestionOne extends StatelessWidget {
  const QuestionOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    final qOneController = Get.find<QuestionOneController>();
    return Scaffold(
      appBar: const ReAppBar(
        titleText: "Short Question One",
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          height: context.height * 1,
          width: context.width * 1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Static List is as Following [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]",
                  style: CCustomTextStyles.black610,
                  textAlign: TextAlign.justify,
                ),
                20.ph,
                ReButton(
                    width: context.width * 0.8,
                    onPressFunction: () {
                      qOneController.sumEvenNumbers(numbers);
                    },
                    text: "Press the Button To View The Sum of Even Numbers"),
                20.ph,
                Obx(
                  () => Text(
                    qOneController.sumString.value,
                    style: CCustomTextStyles.black610,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
