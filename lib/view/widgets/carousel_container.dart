import 'package:flutter/material.dart';
import '../../constants/appconstants.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: Appconstants.height(context) * 0.3,
            width: Appconstants.width(context),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Bitmap.png'),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {},
                child: const Text(
                  'Know more',
                  style: TextStyle(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
