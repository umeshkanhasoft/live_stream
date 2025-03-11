import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_kit/config.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

import 'logic.dart';
import 'state.dart';

class LiveScreenPage extends StatelessWidget {
  LiveScreenPage({super.key});

  final LiveScreenLogic logic = Get.find<LiveScreenLogic>();
  final LiveScreenState state = Get.find<LiveScreenLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => ZegoUIKitPrebuiltLiveStreaming(
            appID: ZegoConstatnt.appId,
            appSign: ZegoConstatnt.appSign,
            userID: logic.state.userId.value,
            userName: logic.state.userName.value,
            liveID: logic.state.liveID.value,
            config:
                logic.state.isHost.value
                    ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
                    : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
          ),
        ),
      ),
    );
  }
}
