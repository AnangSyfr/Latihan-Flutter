import 'package:get/get.dart';

class Counter extends GetxController {
  RxInt data = 0.obs;

  void increment() => data++;
  void decrement() => data--;
}
