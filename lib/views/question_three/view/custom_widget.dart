import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/utills/spacing.dart';

import '../../../utills/text_styles.dart';

class CustomCircularWidget extends StatelessWidget {
  final double percentage;
  final String message;

  const CustomCircularWidget(
      {Key? key, required this.percentage, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: context.height * 1,
      width: context.width * 1,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(
            value: percentage,
            backgroundColor: Colors.amber,
            color: Colors.black,
          ),
          30.ph,
          Text(
            message,
            style: CCustomTextStyles.black610,
          )
        ],
      ),
    );
  }
}
