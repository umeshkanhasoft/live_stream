import 'package:get/get.dart';

import 'state.dart';

class LiveScreenLogic extends GetxController {
  final LiveScreenState state = LiveScreenState();

  @override
  void onInit() {
    super.onInit();
    setUpData();
  }

  void setUpData() {
    var args = Get.arguments;
    state.userId.value =
        (args as Map).containsKey('userId') ? args['userId'] : "";
    state.isHost.value = args.containsKey('isHost') ? args['isHost'] : false;
    print(state.isHost.value);
    state.userName.value = args.containsKey('userName') ? args['userName'] : "";
    state.liveID.value = args.containsKey('liveID') ? args['liveID'] : "";
  }
}
