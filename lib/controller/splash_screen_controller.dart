import 'dart:async';

import 'package:get/get.dart';
import 'package:kool_mind/view/screens/signin_screen.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    gotologin();

    super.onInit();
  }

  Future<void> gotologin() async {
    Timer(
      const Duration(seconds: 3),
      (() => Get.off(LoginScreen())),
    );
  }
}