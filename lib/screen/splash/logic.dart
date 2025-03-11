import 'package:get/get.dart';
import 'package:live_kit/app_routes.dart';

import 'state.dart';

class SplashLogic extends GetxController {
  final SplashState state = SplashState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      Duration(seconds: 3),
      () => Get.offAndToNamed(AppRoutes.mainPage),
    );
  }
}
