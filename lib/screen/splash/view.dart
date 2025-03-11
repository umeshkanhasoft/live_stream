import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final SplashLogic logic = Get.find<SplashLogic>();
  final SplashState state = Get.find<SplashLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash")),
      backgroundColor: Colors.orangeAccent,
    );
  }
}
