import 'package:get/get.dart';

import 'logic.dart';

class LiveScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveScreenLogic());
  }
}
