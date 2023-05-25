import 'package:flutter/material.dart';
import '../../constants/appconstants.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.color,
    required this.icon,
    required this.titleText,
  });
  final Color color;
  final String icon;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Appconstants.height(context) * 0.4,
      width: Appconstants.width(context) * 0.5,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Appconstants.height(context) * 0.07,
              child: Image.asset(icon),
            ),
            Text(
              titleText,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              'Loron ipsom dolor sit ammet consecteture',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
