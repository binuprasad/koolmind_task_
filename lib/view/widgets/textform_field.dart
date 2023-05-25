import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/login_controller.dart';

class TextformfieldWidget extends StatelessWidget {
   TextformfieldWidget({
    super.key,
    required this.labeltext,
    required this.controller,
    this.obscureIcon,
  });
  final String labeltext;
  final TextEditingController controller;
  final IconData? obscureIcon;
final logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: logincontroller.isobscure.value,
      decoration: InputDecoration(
        suffixIcon:  IconButton(icon:Icon(obscureIcon) , onPressed: () { 
          logincontroller.isobscure.value =! logincontroller.isobscure.value;
          log(logincontroller.isobscure.toString());

         },),
        labelText: labeltext,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
