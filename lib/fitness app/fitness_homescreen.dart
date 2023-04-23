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
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 15),
            child: Text(
              "Store",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
          ),
          Expanded(
              child: SizedBox(
            child: ListView(
              children: cardList(context),
            ),
          ))
        ],
      ),
    );
  }

  List<Widget> cardList(BuildContext context) {
    int i = 0;
    List<Widget> cards = [];
    List<String> cardData = [
      'Traning Plan',
      'Meal Plan',
      'Supplement',
      'Fitness',
      'Body Building',
      'images/fitness/fit1.jpg',
      'images/fitness/fit2.jpg',
      'images/fitness/fit3.jpg',
      'images/fitness/fit4.jpg',
      'images/fitness/fit5.jpg',
    ];

    while (i < 5) {
      Padding card = Padding(
        padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
        child: Container(
          // decoration:
          //  BoxDecoration(borderRadius: BorderRadius.circular(15)),
          height: 180,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(cardData[i + 4]), fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(cardData[i],
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.white)),
              ),
            ],
          ),
        ),
      );
      cards.add(card);
      i++;
    }
    return cards;
  }
}
