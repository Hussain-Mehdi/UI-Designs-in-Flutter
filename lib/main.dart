import 'package:flutter/material.dart';

import 'Todo App UI/project_dashboard.dart';
import 'doctor_appointment_UI/doctor_dashboard.dart';
import 'doctor_appointment_UI/doctor_detail.dart';

void main() {
  runApp(const Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xff12151e),
      home: DoctorDetail(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff12151e),
        body: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Hello,\nKristen",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/15545223/pexels-photo-15545223.jpeg"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: createRecommend(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular 3253",
                    style: TextStyle(color: Colors.white),
                  ),
                  ImageIcon(
                    NetworkImage(
                        "https://cdn-icons-png.flaticon.com/512/9702/9702724.png"),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: createFoodCard(context),
              ),
            )
          ],
        ));
  }

  List<Widget> createRecommend() {
    List<Widget> pills = [];

    List<String> food = [
      'Popular',
      'Breakfast',
      'Salad',
      'Burger',
      'Roast',
      'Fries',
      'Fish'
    ];
    List<String> foodIconLink = [
      'https://cdn-icons-png.flaticon.com/512/599/599502.png',
      'https://cdn-icons-png.flaticon.com/512/7093/7093198.png',
      'https://cdn-icons-png.flaticon.com/512/3075/3075977.png',
      'https://cdn-icons-png.flaticon.com/512/135/135715.png',
      'https://cdn-icons-png.flaticon.com/512/1046/1046751.png',
      'https://cdn-icons-png.flaticon.com/512/590/590717.png',
      'https://cdn-icons-png.flaticon.com/512/8737/8737671.png'
    ];
    int i = 0;
    while (i < food.length) {
      Padding pill = Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white54),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                  child: Image(image: NetworkImage(foodIconLink[i])),
                ),
                Text(
                  food[i],
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );
      pills.add(pill);
      i++;
    }
    return pills;
  }

  List<Widget> createFoodCard(BuildContext context) {
    List<Widget> foodCards = [];
    List<String> foodImages = [
      './images/1.jpg',
      './images/2.jpg',
      './images/3.jpg',
      './images/4.jpg',
      './images/5.jpg',
    ];

    int i = 0;

    while (i < 5) {
      Padding foodcard = Padding(
        padding: const EdgeInsets.all(10),
        child: Material(
          color: const Color(0xff12151e),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => openFood(foodImages[i - 1]),
                  ));
            },
            child: Ink(
              decoration: BoxDecoration(
                  color: const Color(0xff171f2c),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage(foodImages[i])),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "60kcl",
                              style: TextStyle(
                                  color: Color(0xffd1f64f), fontSize: 12),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text("789",
                                style: TextStyle(
                                    color: Color(0xffd1f64f), fontSize: 12))
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text("Slicing with Fruit",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Text(
                            "This is good food to eat\n Food with lots of benifits\n Try this out now",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 199, 199, 199)))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
      foodCards.add(foodcard);
      i++;
    }
    return foodCards;
  }

  Widget openFood(String imagelink) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff12151e),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/2961/2961957.png")))
        ],
        title: const Center(child: Text("Fresh Rice")),
      ),
      backgroundColor: const Color(0xff12151e),
      body: Column(
        children: [
          CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage(imagelink),
          ),
          // Container(
          //   color: Colors.red,
          //   child: Image.asset(),
          // ),
          Container(
            margin:
                const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: const Color.fromARGB(255, 187, 187, 187))),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "799",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Text(
                        "Kcal",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "799",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Kcal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "799",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Kcal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "799",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Kcal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "799",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Kcal",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 52, 59, 80),
                borderRadius:
                    BorderRadius.vertical(top: Radius.elliptical(50, 50))),
            child: ListView(
              children: recommendList(),
            ),
          ))
        ],
      ),
    );
  }

  List<Widget> recommendList() {
    List<Widget> foodList = [];
    List<String> foodImages = [
      './images/1.jpg',
      './images/2.jpg',
      './images/3.jpg',
      './images/4.jpg',
      './images/5.jpg',
    ];

    int i = 0;

    while (i < 5) {
      Padding foodcard = Padding(
        padding:
            const EdgeInsets.only(left: 15.0, right: 15, top: 2, bottom: 2),
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: const Color(0xff171f2c),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: 45, backgroundImage: AssetImage(foodImages[i])),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "60kcl",
                          style:
                              TextStyle(color: Color(0xffd1f64f), fontSize: 12),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("789",
                            style: TextStyle(
                                color: Color(0xffd1f64f), fontSize: 12))
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Text("Slicing with Fruit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Text(
                        "This is good food to eat\n Food with lots of benifits\n Try this out now",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 199, 199, 199)))
                  ],
                )
              ],
            ),
          ),
        ),
      );
      foodList.add(foodcard);
      i++;
    }
    return foodList;
  }

  Widget HeroEffect(String tag, String path, double width) {
    return Hero(
        tag: tag,
        child: SizedBox(
          width: width,
          child: Image(image: AssetImage(path)),
        ));
  }
}
