import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/utills/text_styles.dart';

import '../views/homepage/homepage.dart';

class ReAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;

  const ReAppBar({Key? key, required this.titleText}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleText,
        style: CCustomTextStyles.black610,
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.amber,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.keyboard_backspace_rounded),
        color: Colors.black,
        iconSize: 30,
        onPressed: () {
          Get.back();
        },
      ),
      centerTitle: true,
    );
  }
}
