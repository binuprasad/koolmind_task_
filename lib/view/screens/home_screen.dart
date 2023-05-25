import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants/appconstants.dart';
import '../widgets/carousel_container.dart';
import '../widgets/custom_container.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            top: Appconstants.height(context) * 0.04, left: 8.0, right: 8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Koehpa_Logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: Appconstants.height(context) * 0.05,
                  child: Image.asset('assets/icons/notification.png'),
                ),
              ],
            ),
            Appconstants.height10,
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) =>
                  const CarouselContainer(),
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 0.99,
                aspectRatio: 1.9,
                initialPage: 2,
                onPageChanged: (index, reason) {},
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 29,
              crossAxisCount: 2,
              children: const <Widget>[
                CustomContainer(
                  color: Colors.amber,
                  icon: 'assets/icons/build_icon.png',
                  titleText: 'Build',
                ),
                CustomContainer(
                  color: Colors.green,
                  icon: 'assets/icons/buy_icon.png',
                  titleText: 'Buy',
                ),
                CustomContainer(
                  color: Colors.greenAccent,
                  icon: 'assets/icons/services.png',
                  titleText: 'Service',
                ),
                CustomContainer(
                  color: Colors.blue,
                  icon: 'assets/icons/join_venture.png',
                  titleText: 'Joint Venture',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

