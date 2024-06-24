import 'dart:ui';

import 'package:flutter/material.dart';

class DoctorSplash extends StatelessWidget {
  const DoctorSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRRect(
        child: Container(
          color: Colors.transparent,
          child: Stack(children: [
            Container(
              height: 600,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(0, 107, 104, 94),
                  image: DecorationImage(
                      image: AssetImage("./images/doctorappimages/doctor.png"),
                      fit: BoxFit.cover)),
            ),
            const Positioned(
              top: 200,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 238, 238, 238),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        size: 16,
                        color: Color.fromARGB(255, 156, 156, 156),
                      ),
                      // backgroundColor: Color(0xfff6f6f6),
                    ),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 238, 238, 238),
                      child: Icon(
                        Icons.settings_outlined,
                        color: Color.fromARGB(255, 156, 156, 156),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                child: Container(
                  height: 260,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.13)),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.elliptical(30, 30),
                          topLeft: Radius.elliptical(30, 30)),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blue,
                            Color.fromARGB(255, 17, 102, 212),
                          ])),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
