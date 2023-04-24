import 'package:flutter/material.dart';

import 'fitness_model.dart';

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
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
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
    // List<String> cardData = [
    //   'Traning Plan',
    //   'Meal Plan',
    //   'Supplement',
    //   'Fitness',
    //   'Body Building',
    //   'images/fitness/splash.jpg',
    //   'images/fitness/fit1.jpg',
    //   'images/fitness/fit2.jpg',
    //   'images/fitness/fit3.jpg',
    //   'images/fitness/fit4.jpg',
    //   'images/fitness/fit5.jpg',
    // ];

    while (i < 4) {
      GestureDetector card = GestureDetector(
        onTap: () {
          openPage(context, fitnessData[i].imagePath);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
          child: Stack(
            children: [
              Container(
                height: 180,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(fitnessData[i].imagePath),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(fitnessData[i].imageText,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
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

  openPage(
    BuildContext context,
    String imagePath,
  ) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_rounded),
                iconSize: 30,
                color: Colors.white,
              ),
            ]),
          ),
        );
      },
    ));
  }
}
