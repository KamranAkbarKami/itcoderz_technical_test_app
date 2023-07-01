import 'package:get/get.dart';

import '../views/question_one/controller/question_one_controller.dart';
import '../views/question_two/controller/question_two_controller.dart';

class InitializingDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionOneController(), fenix: true);
    Get.lazyPut(() => QuestionTwoController(), fenix: true);
  }
}
