import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReButton extends StatelessWidget {
  final void Function()? onPressFunction;
  final String text;
  final double height;
  final double width;

  const ReButton(
      {Key? key,
      required this.onPressFunction,
      required this.text,
      this.height = 70,
      this.width = 100})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressFunction,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
      ),
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
    );
  }
}
