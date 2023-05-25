import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/appconstants.dart';
import '../../controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
     Get.put(SplashscreenController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: Appconstants.height(context) * 0.6,
            width: Appconstants.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Koehpa_Logo.png'),
              ),
            ),
          ),
          Container(
            height: Appconstants.height(context) * 0.4,
            width: Appconstants.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/langaguge.png'),
                  fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
