import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget(this.index, {super.key});
  final int index;

  final List<Color> colors = [
    const Color(0xfff66c62),
    const Color(0xffffd465),
    const Color(0xffffc2cf),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xfff9f9fc),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          width: 190,
          decoration: BoxDecoration(
              color: colors[index],
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: colors[index],
                  blurRadius: .5,
                  spreadRadius: 0.5,
                  //offset: Offset(2, 6)
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "82%",
                  style: TextStyle(
                      color: index == 1 ? Colors.black : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "Working Hours",
                  style: TextStyle(
                      color: index == 1 ? Colors.black : Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Working hours exceed \nby 3 hours",
                  style: TextStyle(
                    color: index == 1 ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
