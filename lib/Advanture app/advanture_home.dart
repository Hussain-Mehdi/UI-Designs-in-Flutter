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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ready for your next\nadventure?",
            style: TextStyle(
                color: Color.fromARGB(197, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search destination",
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 172, 172, 172)),
                  filled: true,
                  fillColor: Color(0xffedebee),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide.none)),
            ),
          ),
        ],
      ),
    );
  }
}
