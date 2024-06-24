import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class AdventureHome extends StatefulWidget {
  const AdventureHome({super.key});

  @override
  State<AdventureHome> createState() => _AdventureHomeState();
}

class _AdventureHomeState extends State<AdventureHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black87),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18.0, top: 10),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("./images/adventure/pot1.jpg"),
            ),
          )
        ],
        title: const Text(
          "Home",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w800, color: Colors.black87),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 8, right: 8, bottom: 15),
            child: Text(
              "Ready for your next\nadventure?",
              style: TextStyle(
                  color: Color.fromARGB(197, 0, 0, 0),
                  fontSize: 25,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 20),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.mic),
                  hintText: "Search destination",
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 172, 172, 172)),
                  filled: true,
                  fillColor: const Color(0xffedebee),
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Recommend for you",
              style: TextStyle(
                  color: Color.fromARGB(197, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: recommendCards(),
            ),
          ),
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
              color: i == 2 ? const Color(0xff963bf8) : Colors.white,
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
                const SizedBox(
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

  Widget recommendCards() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: mountainData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black54, borderRadius: BorderRadius.circular(10)),
            width: 290,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white10,
                     ) ,
                     child:CachedNetworkImage(imageUrl: mountainData[index].image,) ,
                ),
                Positioned(
                  bottom: 25,
                  left: 10,
                  child: Container(
                    width: 270,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(101, 2, 2, 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            mountainData[index].name,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            mountainData[index].location,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                                size: 15,
                              ),
                              Text(
                                mountainData[index].rating,
                                style: const TextStyle(color: Colors.white),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              const Icon(
                                Icons.place_rounded,
                                color: Colors.white,
                                size: 15,
                              ),
                              Text(
                                mountainData[index].place,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 20,
                    bottom: 50,
                    child: Text(
                      mountainData[index].price,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    )),
                Positioned(
                  right: 10,
                  top: 10,
                  child: IconButton(
                    onPressed: () {
                      print("======================icon is pressed");
                      print(mountainData[index].favourite);
                      if (mountainData[index].favourite == true) {
                        mountainData[index].favourite = false;
                      } else {
                        mountainData[index].favourite = true;
                      }
                      setState(() {});
                    },
                    icon: mountainData[index].favourite == true
                        ? const Icon(Icons.favorite_rounded)
                        : const Icon(Icons.favorite_border_rounded),
                    color: mountainData[index].favourite == true
                        ? Colors.red
                        : Colors.white,
                    focusColor: Colors.red,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
