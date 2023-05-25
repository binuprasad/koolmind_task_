import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/bottom_nav_controller.dart';
import 'home_screen.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});
  final bottonNavController = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
            index: bottonNavController.tabIndex.value,
            children: const [
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
            ]),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 4,
        child: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: bottonNavController.tabIndex.value,
            onTap: bottonNavController.changeTabIndex,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.black,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/profileIcon.png'),
                  ),
                  label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer), label: "Offer"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/icons/moreIcon.png'),
                  ),
                  label: "More"),
            ],
          ),
        ),
      ),
    );
  }
}
