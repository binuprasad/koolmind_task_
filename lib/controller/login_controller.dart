import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kool_mind/view/screens/home_screen.dart';
import '../constants/appconstants.dart';
import '../service/login_service.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isobscure = false.obs;
  RxString device = ''.obs;

  deviceInfo() {
    if (Platform.isAndroid) {
      device.value = 'Android';
    } else if (Platform.isIOS) {
      device.value = 'Ios';
    }
    log(device.value.toString());
    update();
  }

  loginButtonFunction() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final  response =
      await  AuthService().loginpageService(email, password, 'Android',Appconstants.token);
      log(response.toString());
    if (response==null) {
      Get.snackbar('', response.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.2));
          update();
    } else {
      Get.off(()=> HomeScreen());
      Get.snackbar(
        '',
        "Successfully logined",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.2),
        
      );

      update();
    }
  }
}
