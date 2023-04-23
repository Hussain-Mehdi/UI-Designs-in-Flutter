import 'package:flutter/material.dart';

class FitnessHomeScreen extends StatelessWidget {
  const FitnessHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8ebf5),
      appBar: AppBar(
        backgroundColor: Color(0xffe8ebf5),
        elevation: 0,
        actions: [
          Icon(
            Icons.alarm_on_outlined,
            color: Colors.black26,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_rounded,
            color: Colors.black26,
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Store",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
            ),
          ),
          Expanded(
              child: SizedBox(
            child: ListView(
              children: [],
            ),
          ))
        ],
      ),
    );
  }

  List<Widget> cardList() {
    int i = 0;
    List<String> cardData = [
      'Traning Plan',
      'Meal Plan',
      'Supplement',
      'Fitness'
    ];
  }
}
