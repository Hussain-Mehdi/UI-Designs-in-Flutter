import 'package:flutter/material.dart';

class AdvantureSplash extends StatelessWidget {
  const AdvantureSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff963bf8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("./images/adventure/hill.png"),
                      invertColors: true)),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "GlobeTrot",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 2),
            )
          ],
        ),
      ),
    );
  }
}
