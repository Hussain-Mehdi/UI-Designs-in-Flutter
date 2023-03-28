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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Ready for your next\nadventure?",
              style: TextStyle(
                  color: Color.fromARGB(197, 0, 0, 0),
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
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
          SizedBox(
            height: 55,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: recommendChips(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Recommend for you",
              style: TextStyle(
                  color: Color.fromARGB(197, 0, 0, 0),
                  fontSize: 22,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: recommendCards(),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> recommendChips() {
    List<Widget> chipsList = [];

    List<String> chipData = [
      'Fear',
      'Beach',
      'Mountains',
      'Off road',
      'Desert',
      'Hills',
      './images/adventure/fear.png',
      './images/adventure/beach.png',
      './images/adventure/mountain.png',
      './images/adventure/offroad.png',
      './images/adventure/hill.png',
    ];

    int i = 0;

    while (i < 5) {
      Padding chip = Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: i == 2 ? Color(0xff963bf8) : Colors.white,
              border: Border.all(
                  color: i == 2 ? Colors.transparent : Colors.black54)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageIcon(
                  AssetImage(chipData[6 + i]),
                  size: 30,
                  color: i == 2 ? Colors.white : Colors.black,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  chipData[i],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: i == 2 ? Colors.white : Colors.black,
                  ),
                )
              ],
            ),
          ),
        ),
      );
      chipsList.add(chip);
      i++;
    }
    return chipsList;
  }

  List<Widget> recommendCards() {
    List<Widget> cardList = [];
    List<String> cardData = [];
    int i = 0;
    while (i < 5) {
      Padding card = Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          height: 370,
          width: 290,
          child: Stack(
            children: [
              Container(
                height: 370,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1522611471186-922142b0bf8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"),
                        fit: BoxFit.cover,
                        scale: 20)),
              ),
              Positioned(
                bottom: 15,
                left: 10,
                child: Container(
                  width: 270,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(101, 2, 2, 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mount Everst",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        const Text(
                          "Mountain in Asia",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              "4.2",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.place_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              "Mahalangur Himal",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Positioned(
                  right: 20,
                  bottom: 40,
                  child: Text(
                    "\$80",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  )),
              const Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      );
      cardList.add(card);
      i++;
    }
    return cardList;
  }
}
