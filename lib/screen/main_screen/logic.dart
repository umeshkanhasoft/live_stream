import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_kit/app_routes.dart';

import 'state.dart';

class MainScreenLogic extends GetxController {
  final MainScreenState state = MainScreenState();

  void setRole(String role) {
    state.selectedRole.value = role;
  }

  void createJoinLiveStream() {
    if (state.liveIDController.text.isEmpty) {
      showSnackbar("Live id is required!");
      return;
    } else if (state.usernameController.text.isEmpty) {
      showSnackbar("Username is required!");
      return;
    } else {
      var args = {
        "liveID": state.liveIDController.text,
        "isHost": state.selectedRole.value == "Host",
        "userName": state.usernameController.text,
        "userId": state.usernameController.text.replaceAll(' ', '').trim(),
      };
      Get.toNamed(AppRoutes.livePage, arguments: args);
    }
  }

  void showSnackbar(String message) {
    Get.snackbar(
      "Validation",
      message,
      backgroundColor: Colors.yellow,
      colorText: Colors.black,
    );
  }
}
