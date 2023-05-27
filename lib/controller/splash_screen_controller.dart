import 'dart:async';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:kool_mind/view/screens/signin_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../view/screens/bottom_nav.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    gotologin();
    checkUserLogin();

    super.onInit();
  }
  checkUserLogin() async {
    
    SharedPreferences prf = await SharedPreferences.getInstance();
    final token = prf.getString('token');
    log(token.toString());
    if (token == null || token.isEmpty) {
      await Future.delayed(
        const Duration(seconds: 5),
      );
      return Get.offAll(() => LoginScreen());
    } else {
      await Future.delayed(
        const Duration(seconds: 5),
      );

      return Get.offAll(() => NavBar());
    }
  }


  Future<void> gotologin() async {
    Timer(
      const Duration(seconds: 3),
      (() => Get.off(LoginScreen())),
    );
  }
}