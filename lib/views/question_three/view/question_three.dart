import 'package:flutter/material.dart';

import '../../../reusable_widgets/reusable_appbar.dart';
import 'custom_widget.dart';

class QuestionThree extends StatelessWidget {
  const QuestionThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ReAppBar(
        titleText: "Short Question Three",
      ),
      body: SafeArea(
        child: CustomCircularWidget(
          percentage: 0.25,
          message: "Loading Screen ...",
        ),
      ),
    );
  }
}
