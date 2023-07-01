import 'package:get/get.dart';

class QuestionOneController extends GetxController {
  final sumString = "Your Sum is :  ".obs;

  sumEvenNumbers(List<int> numbers) {
    int sum = 0;
    for (int number in numbers) {
      if (number % 2 == 0) {
        sum += number;
      }
    }
    sumString.value = "Your Sum is : ${sum.toString()}";
  }

  @override
  void onClose() {
    sumString.value = "Your Sum is :  ";
    super.onClose();
  }
}
