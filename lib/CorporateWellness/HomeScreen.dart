import 'package:flutter/material.dart';

import './cardWidget.dart';
import './meetingsCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9fc),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello,Villie",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 197, 197, 197),
                  radius: 32,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("./assets/profile.jpg"),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, top: 20, bottom: 15),
            child: Text(
              "your Progress",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(height: 250, child: progressCards())),
          const Padding(
            padding:
                EdgeInsets.only(top: 10, left: 18.0, right: 18, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Wednessday, March 7",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Icon(Icons.calendar_month)
              ],
            ),
          ),
          Expanded(child: Container(child: meetingCard())),
        ],
      )),
    );
  }

  Widget progressCards() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return CardWidget(index);
      },
    );
  }

  Widget meetingCard() {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(left: 18.0, bottom: 10, right: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Time",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MeetingCard(index),
            ],
          ),
        );
      },
    );
  }
}
