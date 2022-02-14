import 'package:get/get.dart';

class CounterController extends GetxController {
  // var count = 0.obs;
  int count = 0;
  increment() {
    count = count + 1;
    update();
  }

  decrement() {
    count = count - 1;
    update();
  }

  updateCounter() {
    update();
  }
}
