import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamran_akbar_technical_test_app/reusable_widgets/reusable_button.dart';
import 'package:kamran_akbar_technical_test_app/utills/spacing.dart';

import '../../../reusable_widgets/reusable_appbar.dart';
import '../../../utills/text_styles.dart';
import '../controller/question_two_controller.dart';

class QuestionTwo extends StatelessWidget {
  const QuestionTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final qTwoController = Get.find<QuestionTwoController>();
    return Scaffold(
      appBar: const ReAppBar(
        titleText: "Short Question Two",
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(15),
          height: context.height * 1,
          width: context.width * 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: qTwoController.textEditingController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.amber),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.amber),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              20.ph,
              ReButton(
                  onPressFunction: () {
                    qTwoController.addItem(
                        qTwoController.textEditingController.value.text);
                  },
                  text: "Add Item"),
              20.ph,
              Obx(
                    () {
                  return Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: qTwoController.itemList.length,
                      separatorBuilder: (BuildContext context, int index) =>
                      10.ph,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          tileColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          title: Text('${qTwoController.itemList[index]}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              qTwoController.removeItem(index);
                            },
                          ),
                          onTap: () {
                            qTwoController.assignUpdateControllerValue(
                                qTwoController.itemList[index]);
                            showDialog(
                              context: context,
                              builder: (context) =>
                                  AlertDialog(
                                    scrollable: true,
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        TextFormField(
                                          controller:
                                          qTwoController.updateController,
                                          textAlign: TextAlign.center,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 2,
                                                  color: Colors.amber),
                                              borderRadius:
                                              BorderRadius.circular(50.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  width: 2,
                                                  color: Colors.amber),
                                              borderRadius:
                                              BorderRadius.circular(50.0),
                                            ),
                                          ),
                                        ),
                                        20.ph,
                                        ReButton(
                                            onPressFunction: () {
                                              qTwoController.updateItem(
                                                  index,
                                                  qTwoController
                                                      .updateController.value
                                                      .text);
                                              Get.back();
                                            },
                                            width: context.width * 1,
                                            text: "Update Item"),
                                      ],
                                    ),
                                  ),
                            );
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
