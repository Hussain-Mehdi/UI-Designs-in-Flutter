import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_food_ui/Advanture%20app/advanture_home.dart';

class AdvantureSplash extends StatefulWidget {
  const AdvantureSplash({super.key});

  @override
  State<AdvantureSplash> createState() => _AdvantureSplashState();
}

class _AdvantureSplashState extends State<AdvantureSplash> {

@override
  void initState() {
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AdventureHome(),));
    });
    super.initState();
  }

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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("./images/adventure/hill.png"),
                      invertColors: true)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
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
