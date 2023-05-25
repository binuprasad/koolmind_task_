import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kool_mind/view/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/appconstants.dart';
import '../service/login_service.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  RxBool isobscure = false.obs;
  RxString device = ''.obs;
 @override
  void onInit()  {
  deviceInfo();
    super.onInit();
  }

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
      await  AuthService().loginpageService(email, password, device.value,Appconstants.token);
      log(response.toString());
    if (response==null) {
      Get.snackbar('Warning!!!', response.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red.withOpacity(0.2));
          update();
    } else {
      Get.off(()=> const HomeScreen());
      Get.snackbar(
        'Success',
        "Successfully logined",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.2),
        
      );
      SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
      'token',
      response.accessToken
    );

      update();
    }
  }
   buttonclickValidator() {
    if (formKey.currentState!.validate()) {
      return;
    }
  }

  passwordValidator(value) {
    if (value == null || value.isEmpty) {
      return 'invalid password';
    }
    if (value.length < 7) {
      return 'Must be more than 6 charater';
    }
  }

  emailValidator(value) {
    if (value == null || value.isEmpty) {
      return 'invalid Email';
    }
  }
}
