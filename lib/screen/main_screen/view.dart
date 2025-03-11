import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class MainScreenPage extends StatelessWidget {
  MainScreenPage({super.key});

  final MainScreenLogic logic = Get.find<MainScreenLogic>();
  final MainScreenState state = Get.find<MainScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Role')),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Obx(
                  () => RadioListTile<String>(
                    title: Text('Host'),
                    value: 'Host',
                    groupValue: logic.state.selectedRole.value,
                    onChanged: (value) => logic.setRole(value!),
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => RadioListTile<String>(
                    title: Text('Audience'),
                    value: 'Audience',
                    groupValue: logic.state.selectedRole.value,
                    onChanged: (value) => logic.setRole(value!),
                  ),
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              controller: logic.state.liveIDController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter Live Id",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: TextField(
              controller: logic.state.usernameController,
              decoration: InputDecoration(
                filled: true,

                fillColor: Colors.white,
                hintText: "Enter username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => logic.createJoinLiveStream(),
            child: Obx(
              () =>
                  logic.state.selectedRole.value == "Host"
                      ? Text("Create")
                      : Text("Join"),
            ),
          ),
        ],
      ),
    );
  }
}
