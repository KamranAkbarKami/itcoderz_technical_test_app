import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/utills/spacing.dart';
import 'package:kamran_akbar_technical_test_app/views/question_two/view/question_two.dart';
import '../../reusable_widgets/reusable_button.dart';
import '../project_assesment_question/all_movies_screen.dart';
import '../question_one/view/question_one.dart';
import '../question_three/view/question_three.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          height: context.height * 1,
          width: context.width * 1,
          child: ListView(
            shrinkWrap: true,
            children: [
              ReButton(
                onPressFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuestionOne(),
                    ),
                  );
                },
                text: "Short Question 1",
              ),
              10.ph,
              ReButton(
                onPressFunction: () {
                  Get.to(() => const QuestionTwo());
                },
                text: "Short Question 2",
              ),
              10.ph,
              ReButton(
                onPressFunction: () {
                  Get.to(() => const QuestionThree());
                },
                text: "Short Question 3",
              ),
              10.ph,
              ReButton(
                onPressFunction: () {
                  Get.to(() => const AllMoviesScreen());
                },
                text: "Long Question",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
