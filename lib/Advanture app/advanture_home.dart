import 'package:flutter/material.dart';

class AdventureHome extends StatelessWidget {
  const AdventureHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundImage: const AssetImage("./images/adventure/pot1.jpg"),
          )
        ],
      ),
      body: Column(
        children: [
          Text(
            "Ready for your next\nadventure?",
            style: TextStyle(
                color: Color.fromARGB(197, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          Row(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              Icon(Icons.mic)
            ],
          )
        ],
      ),
    );
  }
}
