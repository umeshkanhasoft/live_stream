import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenState {
  var selectedRole = 'Host'.obs;
  TextEditingController liveIDController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  MainScreenState() {
    ///Initialize variables
    liveIDController.text = "123";
    usernameController.text = "test";
  }
}
