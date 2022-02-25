import '../controllers/Counter.dart';

import 'package:get/get.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Counter());
  }
}
