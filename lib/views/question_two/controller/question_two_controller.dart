import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionTwoController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController updateController = TextEditingController();
  final itemList = [].obs;

  assignUpdateControllerValue(String value) {
    updateController.text = value;
  }

  addItem(String value) {
    itemList.add(value);
    log(itemList.toString());
    textEditingController.clear();
  }

  removeItem(int index) {
    itemList.removeAt(index);
  }

  updateItem(int index, String value) {
    itemList[index] = value;
    updateController.clear();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
